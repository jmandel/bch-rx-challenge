.import ./RXNCONSO.RRF.sl  rxnconso
.import ./RXNREL.RRF.sl rxnrel
.import ./RXNSAT.RRF.sl rxnsat

CREATE INDEX X_RXNCONSO_STR ON RXNCONSO(STR);
CREATE INDEX X_RXNCONSO_RXCUI ON RXNCONSO(RXCUI);
CREATE INDEX X_RXNCONSO_RXAUI ON RXNCONSO(RXAUI);
CREATE INDEX X_RXNCONSO_TTY ON RXNCONSO(TTY);
CREATE INDEX X_RXNCONSO_CODE ON RXNCONSO(CODE);

CREATE INDEX X_RXNREL_RXCUI1 ON RXNREL(RXCUI1);
CREATE INDEX X_RXNREL_RXCUI2 ON RXNREL(RXCUI2);
CREATE INDEX X_RXNREL_RELA ON RXNREL(RELA);

create index X_RXNREL_SUBJECT_PREDICATE  on RXNREL(RXCUI2, RELA);
create index X_RXNREL_ATOM_PREDICATE  on RXNREL(RXAUI2, RELA);
create index X_RXSAT_ATOM_PREDICATE  on RXNSAT(ATN, SAB);

