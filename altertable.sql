ALTER TABLE louer
DROP FOREIGN KEY fk_louer_embarcation;

ALTER TABLE louer
DROP FOREIGN KEY fk_louer_location;

ALTER TABLE embarcation
DROP FOREIGN KEY fk_embarcation_typembarcation;


ALTER TABLE louer
ADD CONSTRAINT fk_louer_embarcation
FOREIGN KEY (numembarcation) REFERENCES embarcation(numembarcation);

ALTER TABLE louer
ADD CONSTRAINT fk_louer_location
FOREIGN KEY (numlocation) REFERENCES location(numlocation);

ALTER TABLE embarcation
ADD CONSTRAINT fk_embarcation_typembarcation
FOREIGN KEY (codetype) REFERENCES typembarcation(codetype);