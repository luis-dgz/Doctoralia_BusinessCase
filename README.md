# Doctoralia_BusinessCase
Repositorio del Business Case para la posición de BI Analyst en Doctoralia

🛸 1. Avistamientos de OVNIs (UFO Sightings)
	•	Objetivo: Analizar registros de avistamientos en EE. UU. para detectar patrones geográficos y temporales.
	•	Herramientas: Python (pandas, matplotlib, geopandas).
	•	Actividades:
	•	Limpieza y transformación de datos.
	•	Agrupación por estado y mes.
	•	Generación de gráficos por intervalos de tiempo.
	•	Hallazgo: Se observaron picos en ciertos meses con valores negativos en los cambios intermensuales  debido a fluctuaciones en los registros (no significa valores negativos absolutos).


📈 2. Sales Forecast por Producto
	•	Objetivo: Calcular el total de gasto por producto y categoría con base en transacciones individuales.
	•	Herramientas: SQL (estructura tipo producto_spend).
	•	Actividad principal:
	•	Query para obtener el top 2 de productos más vendidos por categoría en 2022.
	•	Transformación en tabla resumen con total_spend.
	•	Resultado: Productos refrigerador y lavadora lideraron en “appliance”; vacuum y headset en “electronics”.


💰 3. Optimización de Producción de Coches (C1 y C2)
	•	Objetivo: Maximizar el beneficio total bajo restricciones de recursos.
	•	Herramientas: Python (scipy.optimize.linprog), Excel para presentación.
	•	Restricciones:
	•	Tiempo de trabajo manual: 500 horas/mes.
	•	Tiempo de máquina: 800 horas/mes.
	•	Resultado:
	•	Producir 220 coches modelo C1.
	•	Producir 280 coches modelo C2.
	•	Beneficio máximo: €720,000.
	•	Gráfico generado: Visualización de la combinación óptima y beneficio total.


🧮 4. Consultas SQL sobre Base Comercial
	•	Objetivo: Realizar análisis de ventas, clientes y productos desde múltiples tablas relacionadas.
	•	Tablas involucradas: PRODUCT, CLIENTS, INVOICES, PRICE.
	•	Consultas destacadas:
	•	Ventas por país y ciudad.
	•	Clientes frecuentes.
	•	Análisis de producto por país y periodo.
	•	Cálculo de tipo de precio (STANDARD vs PROMO).
	•	Total de consultas: 13 queries ejecutadas correctamente con datos válidos.


📊 5. Dashboard Interactivo en Tableau
	•	Objetivo: Visualizar de forma clara los insights obtenidos de los datos SQL.
	•	Dashboards creados:
	•	🥇 Top 5 Productos más vendidos por cantidad y monto.
	•	🧭 Distribución de Ventas en México por ciudad (TreeMap).
	•	🌍 Ventas por País (si se añadió como hoja).
	•	Funcionalidades aplicadas:
	•	Filtros por país.
	•	Unión de todas las tablas en una sola fuente en Tableau.
	•	Exportación: Dashboards combinados y publicados en Tableau Public.