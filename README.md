# persons-names-MK-rdf
A database of Middle Kingdom names: rdf mapping and ontology

## Data preparation
Source data is available under [doi:10.5281/zenodo.1411392](http://dx.doi.org/10.5281/zenodo.1411392)
To prepare data, you should execute  	`prepare_data.sql` 
This set of instructions creates necessary temporary tables and cleans up some data

## Tools for tranforming the data from MySQL to RDF using the R2RML mappings provided
* [db2triples](https://github.com/antidot/db2triples) has issues with semicolons in joined SQL queries and a deprecated dependency, but otherwise works fine (yet slow)

* [Morph-RDB](https://github.com/oeg-upm/morph-rdb) has issues with turtle escape codes and rr:language

* [ontop](https://github.com/ontop/ontop) is not useable due to [lack of support for PredicateMap](https://github.com/ontop/ontop/issues/107); another issue is the [lack of support for the MySQL IF function](https://github.com/JSQLParser/JSqlParser/issues/100)  in JsqlParser, on which ontop relies 
