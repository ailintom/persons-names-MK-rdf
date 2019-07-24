# persons-names-MK-rdf
A database of Middle Kingdom names: rdf mapping and ontology


## Tools for tranforming the data from MySQL to RDF using the R2RML mappings provided
* [db2triples](https://github.com/antidot/db2triples) has issues with semicolons in joined SQL queries and a deprecated dependency, but otherwise works fine (yet slow)

* [Morph-RDB](https://github.com/oeg-upm/morph-rdb) has issues with turtle escape codes and rr:language

* [ontop](https://github.com/ontop/ontop) is not useable due to [lack of support for PredicateMap](https://github.com/ontop/ontop/issues/107); another issue is the [lack of support for the MySQL IF function](https://github.com/JSQLParser/JSqlParser/issues/100)  in JsqlParser, on which ontop relies 
