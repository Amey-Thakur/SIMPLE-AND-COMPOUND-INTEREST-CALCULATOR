<div align="center">

  # Simple and Compound Interest Calculator

  [![License: MIT](https://img.shields.io/badge/License-MIT-lightgrey)](LICENSE)
  ![Status](https://img.shields.io/badge/Status-Completed-success)
  [![Platform](https://img.shields.io/badge/Platform-Termux%20%7C%20Linux-blueviolet)](https://github.com/Amey-Thakur/SIMPLE-AND-COMPOUND-INTEREST-CALCULATOR)
  [![Technology](https://img.shields.io/badge/Technology-Shell%20Script-orange)](https://github.com/Amey-Thakur/SIMPLE-AND-COMPOUND-INTEREST-CALCULATOR)
  [![Developed by](https://img.shields.io/badge/Developed%20by-Amey%20Thakur%20%26%20Hasan%20Rizvi-blue)](https://github.com/Amey-Thakur)

  A robust command-line utility for financial calculations, written in Shell Script.

  **[Source Code](Source%20Code/)** &nbsp;&middot;&nbsp; **[Project Report](Mini%20Project/Compound%20and%20Simple%20Interest%20Calculator%20Report.pdf)**

</div>

---

<div align="center">

  [Authors](#authors) &nbsp;·&nbsp; [Overview](#overview) &nbsp;·&nbsp; [Features](#features) &nbsp;·&nbsp; [Structure](#project-structure) &nbsp;·&nbsp; [Quick Start](#quick-start) &nbsp;·&nbsp; [License](#license) &nbsp;·&nbsp; [About](#about-this-repository) &nbsp;·&nbsp; [Acknowledgments](#acknowledgments)

</div>

---

<!-- AUTHORS -->
<div align="center">

  ## Authors

  **Terna Engineering College | Computer Engineering | Batch of 2022**

  <table>
  <tr>
  <td align="center">
  <a href="https://github.com/Amey-Thakur">
  <img src="https://github.com/Amey-Thakur.png" width="150px;" alt="Amey Thakur"/><br />
  <sub><b>Amey Thakur</b></sub>
  </a>
  </td>
  <td align="center">
  <a href="https://github.com/rizvihasan">
  <img src="https://github.com/rizvihasan.png" width="150px;" alt="Hasan Rizvi"/><br />
  <sub><b>Hasan Rizvi</b></sub>
  </a>
  </td>
  </tr>
  </table>

  *Special thanks to [Hasan Rizvi](https://github.com/rizvihasan) for his meaningful contributions, guidance, and support that helped shape this work.*

</div>

---

<!-- OVERVIEW -->
## Overview

The **Simple and Compound Interest Calculator** is a shell script-based application designed to perform essential financial computations directly from the terminal. Developed as part of the Operating System Laboratory coursework, this project demonstrates the power of shell scripting for mathematical logic, user interaction, and process control.

It provides a user-friendly menu-driven interface to calculate simple interest, compound interest, and total amounts based on user-defined principal, rate, and time parameters.

---

<!-- FEATURES -->
## Features

| Feature | Description |
|---------|-------------|
| **Interactive Menu** | Simple, text-based navigation for selecting calculation types |
| **Input Validation** | Ensures robust handling of user inputs |
| **Precision** | Accurate floating-point calculations using `bc` (Basic Calculator) |
| **Dual Mode** | Supports both Simple Interest and Compound Interest formulas |

### Tech Stack
- **Language**: Shell Script (Bash)
- **Environment**: Linux / Termux
- **Utility**: `bc` (Basic Calculator)

---

<!-- STRUCTURE -->
## Project Structure

```
SIMPLE-AND-COMPOUND-INTEREST-CALCULATOR/
│
├── Source Code/                     # Shell Script logic
│   └── Simple_&_Compound_Interest_Calculator.sh # Core calculation script
│
├── Mini Project/                    # Documentation & Reports
│   └── Compound and Simple Interest Calculator Report.pdf # Technical Report
│
├── docs/                            # Project Documentation
│   └── SPECIFICATION.md             # Formal Technical Specification
│
├── LICENSE                          # MIT License
├── CITATION.cff                     # Citation Metadata
├── SECURITY.md                      # Security Policy & Posture
├── codemeta.json                    # Project Metadata (JSON-LD)
└── README.md                        # Project Documentation
```

---

<!-- QUICK START -->
## Quick Start

### Prerequisites
- **Bash Shell**: Version 4.0 or higher is recommended for optimal compatibility.
- **bc Utility**: The standard Unix arbitrary precision calculator utility (`bc`) must be installed for floating-point calculation.
- **Environment**: Compatible with any POSIX-compliant terminal, including Linux distributions, macOS, and Termux on Android.

### Installation & Deployment

1. **Clone the Collection**  
   Retrieve the localized repository using the following Git command:
   ```bash
   git clone https://github.com/Amey-Thakur/SIMPLE-AND-COMPOUND-INTEREST-CALCULATOR.git
   cd SIMPLE-AND-COMPOUND-INTEREST-CALCULATOR
   ```

2. **Environment Configuration**  
   Ensure the script has the necessary execution permissions within your shell environment:
   ```bash
   chmod +x "Source Code/Simple_&_Compound_Interest_Calculator.sh"
   ```

3. **Execution**  
   Initialize the interactive terminal menu to begin financial calculations:
   ```bash
   bash "Source Code/Simple_&_Compound_Interest_Calculator.sh"
   ```

---

<!-- LICENSE -->
## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

**Summary**: You are free to share and adapt this content for any purpose, even commercially, as long as you provide appropriate attribution to the original author.

**Copyright &copy; 2020** [Amey Thakur](https://github.com/Amey-Thakur), [Hasan Rizvi](https://github.com/rizvihasan)

---

<!-- ABOUT -->
## About This Repository

**Created & Maintained by**: [Amey Thakur](https://github.com/Amey-Thakur)  
**Academic Journey**: Bachelor of Engineering in Computer Engineering (2018-2022)  
**Institution**: [Terna Engineering College](https://ternaengg.ac.in/), Navi Mumbai  
**University**: [University of Mumbai](https://mu.ac.in/)

This project features the Simple and Compound Interest Calculator, a terminal-based financial utility developed as a 4th-semester mini-project for the Operating System Laboratory course. It showcases the practical application of Bash shell scripting, high-precision arithmetic using the `bc` engine, and interactive menu-driven logic design.

**Connect**: [GitHub](https://github.com/Amey-Thakur) &nbsp;&middot;&nbsp; [LinkedIn](https://www.linkedin.com/in/amey-thakur)

### Acknowledgments

Grateful acknowledgment to **[Hasan Rizvi](https://github.com/rizvihasan)** for his pivotal role and collaborative excellence during the development of this project. His technical expertise in Shell Scripting, logic development, and dedicated commitment to software quality were fundamental in bringing this calculator utility to life. This technical record serves as a testament to his scholarly partnership and significant impact on the final implementation.

Special thanks to the faculty members of the Department of Computer Engineering at Terna Engineering College for their guidance during the course of this project. Gratitude is also extended to the mentors and peers who supported this learning endeavor.

---

<!-- FOOTER -->
<div align="center">

  [↑ Back to Top](#simple-and-compound-interest-calculator)

  [Authors](#authors) &nbsp;·&nbsp; [Overview](#overview) &nbsp;·&nbsp; [Features](#features) &nbsp;·&nbsp; [Structure](#project-structure) &nbsp;·&nbsp; [Quick Start](#quick-start) &nbsp;·&nbsp; [License](#license) &nbsp;·&nbsp; [About](#about-this-repository) &nbsp;·&nbsp; [Acknowledgments](#acknowledgments)

  <br>

  🔬 **[Operating System Lab](https://github.com/Amey-Thakur/OPERATING-SYSTEM-AND-OPERATING-SYSTEM-LAB)** &nbsp;·&nbsp; 💻 **[Interest Calculator Project](https://github.com/Amey-Thakur/SIMPLE-AND-COMPOUND-INTEREST-CALCULATOR)**

</div>

---

<div align="center">

  ### 🎓 [Computer Engineering Repository](https://github.com/Amey-Thakur/COMPUTER-ENGINEERING)

  **Computer Engineering (B.E.) - University of Mumbai**

  *Semester-wise curriculum, laboratories, projects, and academic notes.*

</div>
