# ER CENTRO ESTETICO

Schema Entity-Relationship (ER) per il database di gestione di un centro estetico: clienti, dipendenti, servizi, appuntamenti, pagamenti e recensioni.

![alt text](../schema_DB_centro_estetico.jpg)

## Tabelle

| Tabella | Descrizione |
|---|---|
| Customers | Anagrafica clienti |
| Employees | Anagrafica dipendenti |
| Service_category | Categorie dei servizi offerti |
| Services | Servizi disponibili (con prezzo e durata) |
| Appointments | Appuntamenti prenotati |
| Payments | Pagamenti collegati agli appuntamenti |
| Reviews | Recensioni lasciate dai clienti |
| Availability | Disponibilità settimanale dei dipendenti |

## RELAZIONI TRA LE TABELLE

- 1 *categoria* ha molti *servizi* ma ogni *servizio* ha una sola categoria.
- 1 *servizio* viene scelto in molti *appuntamenti* ma ogni *appuntamento* ha un solo *servizio*
- 1 *cliente* ha molti *appuntamenti* ma ogni *appuntamento* ha un solo *cliente*.
- 1 *cliente* può scrivere molte *recensioni* ma ogni *recensione* appartiene ad un solo *cliente*.
- 1 *dipendente* esegue tanti *appuntamenti* ma ogni *appuntamento* ha un solo *dipendente*.
- 1 *dipendente* ha tante *disponibilità*.
- 1 *appuntamento* ha un solo un *pagamento*.
- 1 *appuntamento* ha solo una *recensione*.