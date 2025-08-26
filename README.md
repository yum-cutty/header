# headers

Bash scripts that create formatted header comments

## 📚 Table of Content

<!-- vscode-markdown-toc -->
* [🎯 Requirements](#-requirements)
* [✨ Usage](#-usage)
* [📝 Sample](#-sample)
	* [hashtag comment type](#hashtag-comment-type)
	* [double slash commet type](#double-slash-commet-type)
	* [SGML Comment type](#sgml-comment-type)

<!-- vscode-markdown-toc-config
	numbering=true
	autoSave=true
	/vscode-markdown-toc-config -->
<!-- /vscode-markdown-toc -->

##  <a name='Requirements'></a>🎯 Requirements

[Git Bash](https://git-scm.com/downloads) - recommended terminal for non-linux users <br>

or any other **bash** terminal of your choice

##  <a name='Usage'></a>✨ Usage

> ```bash
> {file-name} {header-text}
> ```
> - Replace `{file-name}` with the file’s path and name.
> - Replace `{header-text}` with your desired title.

**OR**

Use makefile

##  <a name='Sample'></a>📝 Sample

###  <a name='hashtagcommenttype'></a>hashtag comment type

<details>
<summary>Bash Command:</summary>

```bash
$ ./src/hashtag.sh My Header
# ################################################################ #
#                            My Header                             #
# ################################################################ #
```

</details>

<details>
<summary>sample usage in code:</summary>

```python
# ################################################################ #
#                             Addition                             #
# ################################################################ #

def addition(a, b):
    return a + b

# ################################################################ #
#                           Subtraction                            #
# ################################################################ #

def subtraction(a, b):
    return a - b

# ################################################################ #
#                          Function Call                           #
# ################################################################ #

print(subtraction(addition(2, 3), 2))
```

</details>

###  <a name='doubleslashcommettype'></a>double slash commet type


<details>
<summary>Bash Command:</summary>

```bash
$ ./src/double_slash.sh My Header
    /*//////////////////////////////////////////////////////////////
                               My Header
    //////////////////////////////////////////////////////////////*/
```

</details>

<details>
<summary>sample usage in code:</summary>

```java
public class App {

    /*//////////////////////////////////////////////////////////////
                                  MAIN
    //////////////////////////////////////////////////////////////*/

    public static void main(String[] args) throws Exception {
        int compute = new App().sub(new App().add(2, 3), 2);
        System.out.println(compute);
    }

    /*//////////////////////////////////////////////////////////////
                                Addition
    //////////////////////////////////////////////////////////////*/    

    int add(int a, int b) {
        return a + b;
    }

    /*//////////////////////////////////////////////////////////////
                              Subtraction
    //////////////////////////////////////////////////////////////*/    

    int sub(int a, int b) {
        return a - b;
    }
}
```

</details>

###  <a name='SGMLCommenttype'></a>SGML Comment type

<details>
<summary>Bash Command:</summary>

```bash
$ ./src/SGML.sh My Header
<!------------------------------------------------------------------------------>
<!--                                 My Header                                -->
<!------------------------------------------------------------------------------>
```

</details>

<details>
<summary>sample usage in code:</summary>

```html
<body>

    <!------------------------------------------------------------------------------>
    <!--                                   Header                                 -->
    <!------------------------------------------------------------------------------>    

    <h1>Lorem Ipsum</h1>

    <!------------------------------------------------------------------------------>
    <!--                                 Paragraph                                -->
    <!------------------------------------------------------------------------------>    

    <p style="align-self: center;">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
        dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
        Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt 
        mollit anim id est laborum.
    </p>
    
</body>
```

</details>