                   .text
TABELA:            .hword       1, 5, -1, 8, -130, 1024, 10, 64, -80, 256 
VELIKOST_TABELE:   .byte        10
                   .align
MAX:               .hword       0
MAX_INDEKS:        .byte        0
STEVEC:            .byte        0
STEVEC_INDEKSOV:   .byte        0 
                   .align 
                   .global __start
__start:
                   adr r0, TABELA             @nalozi naslov tabele v bazni register
                   ldrb r1, VELIKOST_TABELE   @nalozi velikost tabele v r1
                   ldrh r2, MAX               @nalozi MAX tabele v r2
                   ldrb r3, MAX_INDEKS        @nalozi MAX_INDEX tabele v r3
                   ldrb r4, STEVEC            @nalozi STEVEC v r4
                   ldrb r5, STEVEC_INDEKSOV   @nalozi STEVEC_INDEKSOV v v r5                 
ZANKA:                   
                   ldrsh r6, [r0, r4]         @nalozi vrednost celice tabele + odmik v r6
                   cmp  r6, r2                @primerjamo celico(r7) z MAX(r2) 
                   movgt  r2, r6              @ce je vsebina celice tabele vecja od MAX, shranimo vsebino celice(r6) v MAX(r2)
                   movgt  r3, r5              @ce je vsebina celice tabele vecja od MAX, shranimo indeks celice(r5) v MAX_INDEKS(r3)
                   add  r4, r4, #2            @povecamo STEVEC(r4)  (2 ker je hex)
                   add  r5, r5, #1            @povecamo STEVEC_INDEKSOV(r5)  
                   cmp  r5, r1                @primerjamo STEVEC_INDEKSOV(r5) in VELIKOST_TABELE(r1)
                   blo  ZANKA                 @ce je STEVEC < VELIKOSTI_TABELE se zanka ponovi
                   adr  r0, MAX               @nalozimo naslov oznake MAX v bazni register r0
                   strh  r2, [r0]             @shranimo MAX(r2)
                   adr  r0, MAX_INDEKS        @nalozimo naslov oznake MAX_INDEKS v bazni register r0
                   strb  r3, [r0]             @shranimo MAX_INDEKS(r3)
__end:             b __end