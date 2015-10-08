#cl-markov:



cl-markov is a text generator using Markov chain and written in Common Lisp.

Idea come from [here](http://www.cs.princeton.edu/courses/archive/fall08/cos226/assignments/model.html)


## Usage

The main function to use is:

```lisp

(generate-text k-order input-text &optional (size-output (length input-text))

```
## Examples

Example 1: Lore ipsum with Markov chain of order 1

```
(generate-text 1 "Lorem ipsum dolor sit amet, falli vocent copiosae per ne, libris praesent contentiones qui ad, possim recteque at mel. Oportere similique scriptorem has te, duo ex dicit suscipit nominati. At ius suas etiam molestiae, per semper reformidans et. Ei qui fugit impedit lobortis.")

```

gives 

* "Lontiolitimi erti s pom timpemormiamor limiquonolempibrer piti. daes vore s vontidiquent nempemositete At ct edis ipes ase iosefugitelitell. pociugi. vo cost fampitiaemecor Opo simi ine sior r had, adaem d, vo docetis cole sit diameledit i vorem e at pet dobonteralenonte prt " *

 Lore ipsum with Markov chain of order 7 


*"Lorem ipsum dolor sit amet, falli vocent copiosae per ne, libris praesent contentiones qui ad, possim recteque at mel. Oportere similique scriptorem has te, duo ex dicit suscipit nominati. At ius suas etiam molestiae, per semper reformidans et. Ei qui fugit impedit lobortis.*


Example 3: 



## Installation


## Todo

* add an .asd file
* separate creation and tr

## Author

* Julien Rousé (julien.rouse@gmail.com)

## Copyright

Copyright (c) 2015 Julien Rousé (julien.rouse@gmail.com)

## License

Licensed under the WTFPL License.