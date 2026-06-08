# Progress log

## Day 1 — Setup complete
- MySQL Community Server installed (localhost:3306)
- DBeaver connected, database `cepeo_sim` created
- Schema loaded: 6 tables (ecoles, employes, eleves, absences, incidents_it, ressources_it)
- First query: `SELECT * FROM ecoles;` → 5 rows
- Understood: PRIMARY KEY, FOREIGN KEY, AUTO_INCREMENT, ENUM
- Key insight: ecole_id = NULL on employes = central office staff (like the data admin role)