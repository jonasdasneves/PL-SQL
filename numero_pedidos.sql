SELECT
    a.nom_cliente,
    COUNT(b.cod_pedido) qtd_pedido
FROM
         pf1788.cliente a
    LEFT JOIN pf1788.pedido b ON ( a.cod_cliente = b.cod_cliente )
GROUP BY
    a.nom_cliente
ORDER BY
    2 DESC