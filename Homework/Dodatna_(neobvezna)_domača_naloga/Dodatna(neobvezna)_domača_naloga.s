                          .text
TABELA:                   .hword       1, 5, -1, 8, -130, 1024, 10, 64, -80, 256 
VELIKOST_TABELE:          .byte        10
                          .align
MIN:                      .hword       999
MIN_INDEKS:               .byte        0
STEVEC:                   .byte        0
STEVEC_SHRANJEN:          .byte        0      @se uporablja za shranjevanje stevil nazaj v tabelo
STEVEC_INDEKSOV:          .byte        0
STEVEC_UREJEN:            .byte        0
STEVEC_INDEKSOV_UREJEN:   .byte        0

 
                           .align 
                           .global __start
__start:
                           adr r0, TABELA                     @nalozi naslov tabele v bazni register
                           ldrb r1, VELIKOST_TABELE           @nalozi velikost tabele v r1
                           ldrh r2, MIN                       @nalozi MIN tabele v r2
                           ldrb r3, MIN_INDEKS                @nalozi MIN_INDEKS tabele v r3
                           ldrb r4, STEVEC                    @nalozi STEVEC v r4
                           ldrb r5, STEVEC_SHRANJEN           @nalozi STEVEC_SHRANJEN v r5, ki ga bomo potrebovali za shranjevanje stevil nazaj v tabelo
                           ldrb r6, STEVEC_INDEKSOV           @nalozi STEVEC_INDEKSOV v r6
                           ldrb r7, STEVEC_UREJEN             @nalozi STEVEC_UREJEN  v r7
                           ldrb r8, STEVEC_INDEKSOV_UREJEN    @nalozi STEVEC_INDEKSOV_UREJEN v r8
ZANKA2:                                                       @zanka, ki gre skozi tabelo
                           ldrsh r2, [r0, r4]                 @resetira min - nalozi prvo vrednost iz neurjenega dela tabele
                           adds r2, r2, #1                    @min poveca za 1 --> min postane vecji od prve vrednosti tabele ( pomembno za primerjanej in izvajanje brencha)                  
ZANKA:                   
                           ldrsh r9, [r0, r4]                 @nalozi vrednost celice v r9
                           cmp  r9, r2                        @primerja vrednost celice(r9) z MIN(r2) 
                           movlt  r2, r9                      @ce je vsebina celice(r9) manjša od MIN(r2), shranimo vsebino celice v MIN
                           movlt  r3, r6                      @ce je vsebina celice(r9) manjša od MIN(r2), shranimo indeks celice v MIN_INDEKS
                           movlt  r5,  r4                     @ce je vsebina celice(r9) manjša od MIN(r2), shrani STEVEC_SHRANJEN, ki ga uporabi za shranjevanje
                           add  r4, r4, #2                    @poveca STEVEC  (+2 ker je hex)
                           add  r6, r6, #1                    @poveco STEVEC_INDEKSOV +1 
                           cmp  r6, r1                        @primerja STEVEC_INDEKSOV in VELIKOST_TABELE tabele
                           blo  ZANKA                         @ce je STEVEC manjsi od VELIKOSTI_TABELE se zanka izvede

                           ldrsh r10, [r0, r7]                @v r10 shrani stevilko s zacetka seznama (temp)
                           strh r2, [r0, r7]                  @shrani MIN na zacetek tabele
                           strh r10, [r0, r5]                 @shrani element z zacetka na mesto od min
                           add  r7, r7, #2                    @poveca STEVEC_UREJEN  (+2 ker je hex)
                           add  r8, r8, #1                    @poveca STEVEC_INDEKSOV_UREJEN  +1
                           mov r4, r7                         @postavi nov STEVEC
                           mov r6, r8                         @postavi nov STEVEC_INDEKSOV
                           cmp  r8, r1                        @primerja STEVEC_INDEKSOV_UREJEN in VELIKOST_TABELE tabele
                           blo  ZANKA2                        @ce je urejen STEVEC manjsi VELIKOSTI_TABELE se zanka ponovi                    

__end:                     b __end