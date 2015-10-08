#cl-markov:



cl-markov is a text generator using Markov chain and written in Common Lisp.

The idea come from [here](http://www.cs.princeton.edu/courses/archive/fall08/cos226/assignments/model.html)


## Usage

The main function to use is:

```lisp

(generate-text k-order input-text &optional (size-output (length input-text))

```
## Examples

Example 1: Lore ipsum with Markov chain of order 1

```
(generate-text 1 "Lorem ipsum dolor sit amet, falli vocent copiosae per ne, libris praesent contentiones qui ad, possim recteque at mel.
 Oportere similique scriptorem has te, duo ex dicit suscipit nominati. At ius suas etiam molestiae, per semper reformidans et. 
Ei qui fugit impedit lobortis.")

```

gives 

```

 Lontiolitimi erti s pom timpemormiamor limiquonolempibrer piti. 
daes vore s vontidiquent nempemositete At ct edis ipes ase iosefugitelitell. pociugi. vo cost fampitiaemecor Opo simi ine sior r had,
 adaem d, vo docetis cole sit diameledit i vorem e at pet dobonteralenonte prt 
```

 Lore ipsum with Markov chain of order 7 


```
Lorem ipsum dolor sit amet, falli vocent copiosae per ne, libris praesent contentiones qui ad, possim recteque at mel. 
Oportere similique scriptorem has te, duo ex dicit suscipit nominati. At ius suas etiam molestiae, per semper reformidans et.
 Ei qui fugit impedit lobortis.
```

Example 2: [speech_model](http://www.cs.princeton.edu/courses/archive/fall08/cos226/assignments/model-speech.txt) found on the princeton course website.

**Original**

```
Welcome to Princeton.  This may be your first Princeton lecture, but
it's not a typical one.  For one thing it's the only time you'll be in
a class of size more than 1000!  Also, lectures usually involve slides
or vugraphs, or at least a blackboard.  When Hal told me this lecture
would be in this room and that no audio-visual aids would be possible...

``` 

Markov chain of order 1

```
Wo aly kedos anikeng th  iveveon expowe wlcom.
tonondan y e, thee
ited He parynizeminorron headothret tan alomompe
  f IOd benlleld rin tillo opevetr e stithaco mpusth cthen bucthain thele totyewewece, upe: if finl BMAMeric
My  Fut corofuly ty, utimpea y chatiny, 
opandictistis th'tellsth, tharisess th

```

Markov chain of order 4

```
Welcome it instructive a doctor optimistication, we
knowledge, we had and strive importunity withough our 
crease fast might be likely note and more
power of teachers had and learn to deny.  
Knowledge, and to the need to diminish these faculties of the first Princeton.

Even the library are most reme.

A
```

Markov chain of order 7

```
Welcome to life.

As a research, in ancient times,
scholars are men and complex institutions with the problem for a lifetime, like
books.  The process of adding new information or less, the net: Odlyzko prediction of
evaluation doesn't change was truly a revolution (and will continue to
be important, Bush 
```

Enjoy!


## Installation
Work in progress

## Todo

* add an .asd file
* separate creation and tr

## Author

* Julien Rousé (julien.rouse@gmail.com)

## Copyright

Copyright (c) 2015 Julien Rousé (julien.rouse@gmail.com)

## License

Licensed under the WTFPL License.