# 1. create db
At terminal
```
createdb -U postgres mydb
```

# 2. connect to db
At terminal
```
psql -U postgres mydb
```
# 3. disconnect db
```
\q
```

# 4. delete db
If you want to delete db
```
dropdb -U postgres mydb
```
# 5. practice db
after login psql
```
\i ./1_4_2.sql
```
Thereafter, run the same commands in order from 2_3_1
except for 2_3_3,2_4_5,2_9_2

or, at Terminal
```
psql -U postgres mydb -f 1_4_2.sql
```
each one is ok.

# 5.1 check data
after login psql
 ```
\i ./2_5_1.sql
```

# 6. command reference
after login psql
help
```
\?
```
DB set
```
\l
```
DB switching
```
\c <DB_NAME>
```
relation set
```
\d
```
table set
```
\dt
```