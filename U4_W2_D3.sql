--				U4-W2-D3


--Utilizzando il Database Nortwind, scaricato ed opportunamente importato in SQL Server, creare le seguenti istruzioni SQL:
--1) Numero totale degli ordini,
--2) Numero totale di clienti,
--3) Numero totale di clienti che abitano a Londra,
--4) La media aritmetica del costo del trasporto di tutti gli ordini effettuati
--5) La media aritmetica del costo del trasporto dei soli ordini effettuati dal cliente "BOTTM"
--6) Totale delle spese di trasporto effettuate raggruppate per id cliente
--7) Numero totale di clienti raggruppati per città di appartenenza
--8) Totale di UnitPrice * Quantity raggruppato per ogni ordine
--9) Totale di UnitPrice * Quantity solo dell'ordine con id=10248
--10) Numero di prodotti censiti per ogni categoria
--11) Numero totale di ordini raggruppati per paese di spedizione (ShipCountry)
--12) La media del costo del trasporto raggruppati per paese di spedizione (ShipCountry)



--1) SELECT COUNT(*) AS NumeroTotaleOrdini FROM Orders
--2) SELECT COUNT(*) AS NumeroTotaleClienti FROM Customers
--3) SELECT COUNT(*) AS ClientiLondra FROM Customers WHERE City='London'
--4) SELECT AVG(Freight) AS MediaCostoTrasporto FROM Orders
--5) SELECT AVG(Freight) AS MediaCostoTrasportoBottm FROM Orders WHERE CustomerID = 'BOTTM'
--6) SELECT CustomerID, SUM(Freight) AS TotaleSpeseTrasporto FROM Orders GROUP BY CustomerID
--7) SELECT City, COUNT(*) AS NumeroClientiCittà FROM Customers GROUP BY City
--8) SELECT OrderID, SUM(UnitPrice * Quantity) AS TotaleOrdine FROM [Order Details] GROUP BY OrderID
--9) SELECT OrderID, SUM(UnitPrice * Quantity ) AS TotaleOrdine10248 FROM [Order Details] WHERE OrderID = 10248 GROUP BY OrderID
--10) SELECT CategoryID, COUNT(*) AS NumeroProdottiPerCategoria FROM Products GROUP BY CategoryID
--11) SELECT ShipCountry, COUNT(*) AS NumeroOrdiniPerPaese FROM Orders GROUP BY ShipCountry
--12) SELECT ShipCountry, AVG(Freight) AS MediaCostoTrasportoPerPaese FROM Orders GROUP BY ShipCountry