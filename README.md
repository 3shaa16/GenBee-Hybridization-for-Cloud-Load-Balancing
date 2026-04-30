# 🚀 GenBee Hybridization for Cloud Load Balancing

## 📄 Overview

This project presents a **hybrid optimization approach** for cloud load balancing by combining the strengths of the **Genetic Algorithm (GA)** and the **Honey Bee Algorithm (HBA)**.

The objective is to enhance:

* ⚡ Load distribution efficiency
* 📉 Convergence speed
* 🔄 Resource utilization

This work is supported by an IEEE publication.

---

## 📚 Paper

🔗 [GenBee Hybridization for Cloud Load Balancing (IEEE Xplore)](https://ieeexplore.ieee.org/document/10939553)

---

## 🧠 Methodology

The project evaluates three approaches:

### 🔹 Genetic Algorithm (GA)

* Evolutionary optimization technique
* Uses selection, crossover, and mutation
* Strong in global search (exploration)

### 🔹 Honey Bee Algorithm (HBA)

* Swarm intelligence-based optimization
* Inspired by bee foraging behavior
* Strong in local search (exploitation)

### 🔹 Hybrid Approach (GenBee)

* Combines GA + HBA
* Balances exploration and exploitation
* Achieves improved performance in cloud load balancing

---

## 📊 Results

### 🔹 Algorithm Comparison

![Comparison](results/comparison/comparison_all.png)

### 🔹 Average Fitness

![Average Fitness](results/comparison/avg_fitness.png)

### 🔹 Average Load Distribution

![Average Load](results/comparison/avg_load.png)

---

## 📝 Key Findings

* ✅ Hybrid algorithm outperforms GA and HBA individually
* ⚡ Faster convergence rate
* 📊 Improved load balancing efficiency
* 📉 More stable fitness values across iterations

---

## 📁 Project Structure

```bash
├── data/                  # Input dataset
├── docs/                  # Paper and documentation
├── results/               # Output plots and results
├── src/
│   ├── Genetic_Algorithm/
│   ├── Honey_Bee_Algorithm/
│   ├── Hybrid/
│   └── visualization/
├── README.md
```

---

## ⚙️ How to Run

### 1. Clone the repository

```bash
git clone https://github.com/your-username/your-repo.git
cd your-repo
```

### 2. Run algorithms in R

```r
source("src/Genetic_Algorithm/main.R")
source("src/Honey_Bee_Algorithm/main.R")
source("src/Hybrid/main.R")
```

### 3. Generate visualizations

```r
source("src/visualization/plot_comparison.R")
source("src/visualization/plot_avg_fitness.R")
source("src/visualization/plot_avg_load.R")
```

---

## 🛠️ Technologies Used

* R Programming
* MATLAB
* Genetic Algorithm (GA)
* Honey Bee Algorithm (HBA)
* Hybrid Optimization Techniques
* Data Visualization

---

## 🎯 Applications

* Cloud computing load balancing
* Task scheduling in distributed systems
* Resource allocation optimization

---

## 🔮 Future Work

* Integration with real-time cloud platforms
* Scaling for large distributed environments
* Exploration of additional hybrid metaheuristic models

---

## 👨‍💻 Authors

Sheetal Dash
Tanusha Hande
Trisha Hegde
Kumud Wasnik

---

## 📜 License

This project is licensed under the MIT License.

