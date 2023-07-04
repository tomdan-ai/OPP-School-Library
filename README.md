<a name="readme-top"></a>

<!--
!!! IMPORTANT !!!
This README is an example of how you could professionally present your codebase. 
Writing documentation is a crucial part of your work as a professional software developer and cannot be ignored. 

You should modify this file to match your project and remove sections that don't apply.

REQUIRED SECTIONS:
- Table of Contents
- About the Project
  - Built With
  - Live Demo
- Getting Started
- Authors
- Future Features
- Contributing
- Show your support
- Acknowledgements
- License

OPTIONAL SECTIONS:
- FAQ

After you're finished please remove all the comments and instructions!

For more information on the importance of a professional README for your repositories: https://github.com/microverseinc/curriculum-transversal-skills/blob/main/documentation/articles/readme_best_practices.md
-->

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Install](#install)
  - [Usage](#usage)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 OPP SCHOOL LIBRARY <a name="about-project"></a>


**OPP SCHOOL LIBRARY** is a  Ruby-based application that demonstrates the usage of classes and inheritance in an object-oriented programming paradigm.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **Classroom-Student Relationship:** The project implements a has-many/belongs-to relationship between the Classroom and Student classes. This association allows a classroom to have multiple students, and a student belongs to a specific classroom. When adding a student to a classroom, the association automatically sets the classroom for the student. Similarly, when setting the classroom for a student, the student is also added to the classroom's list of students.

- **Book-Rental Relationship:** The project establishes a has-many/belongs-to relationship between the Book and Rental classes. This association enables a book to have multiple rentals, allowing multiple people to rent the same book over time. On the other side, a rental belongs to a specific book. This relationship is implemented using the intermediate class Rental.

- **Person-Book Relationship:** The project implements a many-to-many relationship between the Person and Book classes using the intermediate class Rental. This association allows a person to have multiple rentals, meaning they can borrow multiple books. Similarly, a book can have multiple rentals, representing different instances when the book was borrowed by different people. The Rental class acts as a bridge between Person and Book, facilitating the many-to-many relationship.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>


To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

```sh
 gem install rails 
```


### Setup

Clone this repository to your desired folder:


```sh
  cd my-folder
  git clone git@github.com:tomdan-ai/OPP-School-Library.git
```
### Install

Install this project with:

```sh
  cd OPP-School-Library
  bundle install
```
### Usage

To run the project, execute the following command:

```sh
  ruby <name of file>
```
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>


👤 **Tom Daniel**

- GitHub: [@tomdan-ai](https://github.com/tomdan-ai)
- Twitter: [@kvngWebstar](https://twitter.com/tomudoh1)
- LinkedIn : [Tom Udoh](https://linkedin.com/in/tomudoh)

👤 **Ernest Korir**

- GitHub: [@ernestkorir](https://github.com/ernestkorir)
- LinkedIn: [Ernest korir](https://www.linkedin.com/in/ernest-korir/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- Add basic UI.
- Refactor your code.
- Preserve data.
- Unit tests.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/tomdan-ai/OPP-School-Library/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>


If you like this project give me a star

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>


I would like to thank Microverse for the learning experinece

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./MIT.md) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
