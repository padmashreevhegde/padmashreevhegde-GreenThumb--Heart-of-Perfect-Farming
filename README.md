# GreenThumb--Heart-of-Perfect-Farming
The Indoor Farm Environmental Impact Open Data Tracker and Exploration application is a blockchain-based solution designed to address the energy consumption and environmental impact of indoor farming operations.This project aims to promote open data standards in the industry and showcase how blockchain technology can be used for record energy usage

Sustainable Blockchain Hackathon:GREEN THUMB
						- Heart of perfect farming.

## Problem Description
The indoor farming industry is gaining popularity due to its ability to produce high-quality crops in controlled environments. However, energy consumption in indoor farms can contribute to environmental degradation if not managed efficiently. This project aims to address this challenge by developing an application that tracks and explores the environmental impact of indoor farming operations.

## Proposed Solution
Our "Indoor Farm Environmental Impact Open Data Tracker and Exploration" application utilizes blockchain technology and the interplanetary File System (IPFS) to create an immutable and decentralized ledger. This ledger records various environmental metrics associated with indoor farming, including energy consumption, water usage, greenhouse gas emissions, waste generation, and other relevant indicators. By leveraging blockchain, the solution ensures data integrity, security, and transparency.

### Key Features
- Connect to the cloud service through an IPFS node or Pinata for data hosting
- Upload data related to energy consumption, water usage, and environmental parameters
- Record transactions in a tamper-proof manner using blockchain technology
- Compare environmental impact against predefined benchmarks and industry standards

## Objectives
- Promote and support open data standards in the indoor farming industry
- Develop an application and schema as a proof of concept for utilizing blockchain technology in creating an immutable record of energy usage
- Analyze and study the environmental impact of indoor farming at scale

## Filecoin Sponsored Grant Change log:
- Added 2 top level extra tabs containing Metric Summary and Metric Variability analysis.
- Metric comparison tab has 3 new comparisons.
- Metric Summary tab has usage and change in usage over time plots which we can look up to the level of individual farm and produce.
- Metric Variability Tab has the histograms of Usage of different metrics.



## Installation and Usage
- [Install IPFS and have the IPFS Daemon running](https://docs.ipfs.io/install/)
- [Install R](https://cran.r-project.org)
- Install following R packages [How to install R packages](https://www.r-bloggers.com/2010/11/installing-r-packages/)
	- tidyverse
	- httr
	- jsonlite
	- shiny
	- shinydashboard
	- qrcode
	- lubridate

## Run the WebApp on your machine
- Open R session
- Clone this repo
- Run in R console `setwd(<<repopath>>)`
- Run in R console `shiny::runApp()`



