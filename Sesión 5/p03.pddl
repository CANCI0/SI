(define (problem p03)
    (:domain blocksword)
    (:objects a b c d e)
    (
        :init (encima_mesa a) (not(sin_nada_encima a)) (encima_mesa b) (encima_bloque c a)
        (encima_mesa e) (sin_nada_encima b) (sin_nada_encima c) (sin_nada_encima e)
    )
    (:goal (and (encima_bloque a b) (encima_bloque b c) (sin_nada_encima a) (encima_mesa c)))
)