# 🚀 GenBee Hybridization for Cloud Load Balancing

## 📄 Overview

This project implements a **hybrid optimization algorithm (GenBee)** that combines the strengths of the **Genetic Algorithm (GA)** and the **Honey Bee Algorithm (HBA)** to improve **cloud load balancing performance**.

The objective is to achieve:

* ⚡ Efficient task distribution
* 📉 Faster convergence
* 🔄 Better resource utilization

This work is supported by an IEEE publication.

---

## 📚 Paper

🔗 [GenBee Hybridization for Cloud Load Balancing (IEEE Xplore)](https://ieeexplore.ieee.org/document/10939553)

---

## 🧠 Methodology

### 🔹 Genetic Algorithm (GA)

* Evolutionary optimization approach
* Uses selection, crossover, and mutation
* Strong in global exploration

### 🔹 Honey Bee Algorithm (HBA)

* Swarm intelligence-based method
* Inspired by bee foraging behavior
* Strong in local exploitation

### 🔹 Hybrid Algorithm (GenBee)

* Combines GA + HBA
* Balances exploration and exploitation
* Improves convergence and solution quality

---

## 📊 Results

### 🔹 Combined Comparison
Provides a side-by-side performance comparison of GA, HBA, and the hybrid approach across key metrics.

![Combined](results/Combined%20scatterplot.png)

### 🔹 Average Fitness
Represents the mean optimization quality of solutions across iterations, indicating how well each algorithm converges.

![Average Fitness](results/Average%20Fitness%20output.png)

### 🔹 Average Load
Shows the average distribution of workload across resources, reflecting the effectiveness of load balancing.

![Average Load](results/Average%20Load%20output.png)

### 🔹 Individual Algorithms

#### Genetic Algorithm
![GA](results/Scatterplot%20Genetic.png)

#### Honey Bee Algorithm
![HBA](results/Scatterplot%20HoneyBee.png)

#### Hybrid Algorithm
![Hybrid](results/Scatterplot%20Hybrid.png)

---

## 📝 Key Findings

* ✅ Hybrid approach outperforms individual GA and HBA
* ⚡ Faster convergence rate
* 📊 Improved load balancing efficiency
* 📉 More stable fitness values

---

## 📁 Project Structure

```bash
├── data/
│   └── dataset.csv
├── docs/
│   └── paper_link.md
├── results/
│   ├── Average Fitness output.png
│   ├── Average Load output.png
│   ├── Combined scatterplot.png
│   ├── Scatterplot Genetic.png
│   ├── Scatterplot HoneyBee.png
│   ├── Scatterplot Hybrid.png
│   └── graphs.png
├── src/
│   ├── Genetic_Algorithm/
│   ├── Honey_Bee_Algorithm/
│   ├── Hybrid/
│   └── Visualization/
│       ├── Comparison/
│       └── Individual_Plotting/
├── README.md
```

---

## 🔗 Source Code

* [Genetic Algorithm](https://github.com/3shaa16/GenBee-Hybridization-for-Cloud-Load-Balancing/tree/main/src/Genetic_Algorithm)
* [Honey Bee Algorithm](https://github.com/3shaa16/GenBee-Hybridization-for-Cloud-Load-Balancing/tree/main/src/Honey_Bee_Algorithm)
* [Hybrid Algorithm](https://github.com/3shaa16/GenBee-Hybridization-for-Cloud-Load-Balancing/tree/main/src/Hybrid)
* [Visualization Scripts](https://github.com/3shaa16/GenBee-Hybridization-for-Cloud-Load-Balancing/tree/main/src/Visualization)

---

## ⚙️ How to Run

### Requirements

* MATLAB
* R (for visualization scripts, if applicable)

---

### 🔹 Run Genetic Algorithm

```matlab
run('src/Genetic_Algorithm/GeneticAlgorithm.m')
```

### 🔹 Run Honey Bee Algorithm

```matlab
run('src/Honey_Bee_Algorithm/hb.m')
```

### 🔹 Run Hybrid Algorithm

```matlab
run('src/Hybrid/GeneticAlgorithm.m')
```

---

### 🔹 Generate Visualizations

Run scripts from:

```matlab
src/Visualization/Comparison/
src/Visualization/Individual_Plotting/
```

---

## 🛠️ Technologies Used

* MATLAB (algorithm implementation)
* R Programming (data visualization)
* Genetic Algorithm (GA)
* Honey Bee Algorithm (HBA)
* Hybrid Optimization Techniques

---

## 🎯 Applications

* Cloud computing load balancing
* Task scheduling in distributed systems
* Resource allocation optimization

---

## 🔮 Future Work

* Integration with real cloud environments
* Scaling for large distributed systems
* Exploration of advanced hybrid metaheuristics

---

## 👨‍💻 Authors

* Sheetal Dash
* Tanusha Hande
* Trisha Hegde
* Kumud Wasnik

---

## 📜 License

This project is licensed under the MIT License.


