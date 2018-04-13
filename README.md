# Bla Bla Bla
A random sentence generator, mainly designed to start an improvisation story. <br>
It can be used to set the start setting for a story, or anything else you want to do with some crazy sentences. 

## Usage
The usage is very simple, there is one main function that every SentenceGenerator have and its teh RANDOM().<br>
The other functions available for each different SentenceGenerator are not important unless you want a very specific kind of sentence.
<br><br>
Mainly you will use the main function: 
```swift
    SentenceGenerator.random()
```
It will return a sentence that somewhat make sense for you to start your story from there. 

For details on each implemented language: 
<details>
    <summary>Portuguese BR</summary>
    <p> To get a random sentence in PORTUGUESE Brazil: </p> 
    <pre><code class="swift">PtBrSentenceGenerator.random()</code></pre>

Output example:
> Você é um canguru zangado e está sonhando com uma colher

> Você é um largato apavorado destruindo uma colher

> Você está beijando uma tábua enquanto chama um Ogro
</details>

<details>
    <summary>English</summary>
    <p>To get a random sentence in ENGLISH:</p>
     <pre><code class="swift">EnSentenceGenerator.random()</code></pre>

Output Example:
> You are at the café choosing a cushion

> You are smelling a beautiful raccoon in Ireland

> You are a tiny dolphin at the parking lot
</details>

## Install
To be able to use the project:
- Copy/clone the project
- Copy the following files to your own project: 
    - Protocols.swift
    - Extensions.swift
    - PtBrSentenceGenerator.swift
    - WordLists/
 
## TODO
- Cocoapods installation
- English sencente generator
- Localized sentence generator using online translator

## License
BlaBlaBla is released under the [MIT License](LICENSE).
