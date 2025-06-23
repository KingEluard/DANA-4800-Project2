# Wildfire Hotspot Analysis Project

## Overview

This project analyzes wildfire hotspot data across Canadian provinces and territories, focusing on the relationship between environmental factors and fire occurrence patterns. The analysis combines multiple years of data to identify trends, correlations, and regional variations in wildfire activity.

## Project Structure

```
project/
├── Project_2_.R              # Main analysis script
├── Project_2_EDA.R           # Exploratory data analysis
├── project 2.R               # Initial data processing (2023 data)
├── Project 2_G 3.pptx        # Project presentation
├── D4800_Proj2_Data/         # Data directory containing CSV files
└── README.md                 # This documentation
```

## Data Sources

The project utilizes CSV files containing wildfire hotspot data from multiple years, including:
- Geographical coordinates (latitude, longitude)
- Temporal information (report dates)
- Environmental variables (precipitation, drought codes, moisture codes)
- Vegetation characteristics (fuel type, age, greenup status)
- Fire weather indices (Total Fuel Consumption, Duff Moisture Code, Drought Code)

## Key Variables

| Variable | Description |
|----------|-------------|
| `lat`, `lon` | Geographic coordinates |
| `rep_date` | Report date and time |
| `agency` | Province/territory code |
| `fuel` | Fuel type classification |
| `age` | Vegetation age |
| `greenup` | Vegetation greenup status (0=leafless, 1=green) |
| `pcp` | Precipitation (mm) |
| `dc` | Drought Code |
| `dmc` | Duff Moisture Code |
| `tfc` | Total Fuel Consumption (kg/m²) |

## Dependencies

The project requires the following R packages:

```r
install.packages(c("dplyr", "tidyr", "ggplot2", "lubridate", "sf", "data.table", "tidyverse"))
```

## Analysis Components

### 1. Data Cleaning and Preprocessing

- **Missing Value Handling**: Removes records with missing latitude/longitude coordinates
- **Date Parsing**: Handles multiple date formats using `lubridate::parse_date_time()`
- **Data Standardization**: Normalizes column names to lowercase
- **Invalid Value Cleaning**: Replaces empty strings and "unknown" values with NA

### 2. Exploratory Data Analysis

#### Provincial Hotspot Distribution
- Identifies top 10 provinces/territories with the highest number of hotspots
- Creates visualizations showing hotspot frequency by region
- Generates dynamic bar plots with proper scaling and annotations

#### Fuel Type Analysis
- Analyzes fuel type distribution across provinces
- Creates normalized stacked bar charts showing fuel type proportions
- Performs chi-square tests to examine relationships between provinces and fuel types

#### Vegetation Greenup Analysis
- Examines the proportion of green vs. leafless vegetation by province
- Visualizes greenup patterns across different regions

### 3. Temporal Analysis

#### British Columbia Focus
- Analyzes yearly trends in BC hotspot data
- Compares precipitation patterns with hotspot frequency
- Creates scaled comparison plots for temporal correlation analysis

### 4. Environmental Factor Analysis

#### Age and Drought Code Correlation
- Investigates the relationship between vegetation age and drought conditions
- Generates scatter plots with regression lines
- Calculates correlation coefficients for quantitative assessment

#### Moisture Code Distribution
- Analyzes Duff Moisture Code (DMC) patterns across provinces
- Creates boxplot visualizations showing distribution and outliers

#### Fuel Consumption by Age Groups
- Groups vegetation by age categories (500-year intervals)
- Analyzes mean Total Fuel Consumption by age group
- Focuses on BC data for detailed regional analysis

## Key Findings

### Regional Patterns
- Identification of provinces with highest wildfire activity
- Fuel type distributions vary significantly across regions
- Greenup patterns show regional vegetation differences

### Temporal Trends
- Precipitation and hotspot frequency show temporal correlations
- Yearly variations in BC reveal climate-fire relationships

### Environmental Correlations
- Age and drought code relationships provide insights into fire susceptibility
- Moisture code distributions highlight regional fire risk patterns

## Visualizations

The project generates multiple visualization types:

1. **Bar Charts**: Provincial hotspot frequency, fuel type distributions
2. **Stacked Bar Charts**: Normalized fuel type and greenup proportions
3. **Line Plots**: Temporal trends with dual-axis scaling
4. **Scatter Plots**: Age vs. drought code correlations with regression lines
5. **Box Plots**: Moisture code distributions with outlier identification

## Usage Instructions

### Running the Analysis

1. **Setup Environment**:
   ```r
   # Install required packages
   install.packages(c("dplyr", "tidyr", "ggplot2", "lubridate", "sf", "data.table", "tidyverse"))
   
   # Load libraries
   library(dplyr)
   library(tidyr)
   library(ggplot2)
   library(lubridate)
   library(sf)
   ```

2. **Set Data Path**:
   ```r
   # Update the path to your data directory
   path <- "D4800_Proj2_Data/"
   ```

3. **Run Analysis**:
   ```r
   # Execute the main analysis script
   source("Project_2_.R")
   
   # Or run exploratory analysis
   source("Project_2_EDA.R")
   ```

### Customization Options

- **Regional Focus**: Modify `agency` filters to analyze specific provinces
- **Time Periods**: Adjust date filters for specific year ranges
- **Variable Selection**: Include/exclude environmental variables based on research questions
- **Visualization Themes**: Customize plot aesthetics and color schemes

## File Descriptions

### `Project_2_.R`
Main analysis script containing:
- Data loading and cleaning procedures
- Provincial hotspot analysis
- Fuel type and greenup analysis
- BC-specific temporal analysis
- Age-based fuel consumption analysis

### `Project_2_EDA.R`
Extended exploratory analysis including:
- Chi-square tests for categorical relationships
- Enhanced visualization options
- Correlation analysis between environmental factors
- Statistical testing procedures

### `project 2.R`
Initial data processing script for 2023 data:
- Basic data exploration
- Missing value identification
- Data type conversions
- Duplicate detection

## Technical Notes

### Data Handling
- Uses `data.table::fread()` for efficient large file reading
- Implements `dplyr` for data manipulation and filtering
- Handles multiple date formats dynamically

### Statistical Methods
- Chi-square tests for categorical associations
- Correlation analysis for continuous variables
- Proportion calculations for comparative analysis

### Visualization Standards
- Consistent color schemes using `viridis` and `heat.colors`
- Proper axis labeling and title formatting
- Dynamic scaling for optimal visual presentation
- Grid lines and annotations for enhanced readability

## Future Enhancements

### Potential Extensions
1. **Spatial Analysis**: Incorporate GIS mapping for geographic patterns
2. **Predictive Modeling**: Develop models for hotspot prediction
3. **Climate Integration**: Include additional weather variables
4. **Seasonal Analysis**: Examine intra-annual patterns
5. **Multi-year Comparisons**: Extend temporal analysis across decades

### Additional Analyses
- Machine learning approaches for pattern recognition
- Time series analysis for trend detection
- Cluster analysis for regional grouping
- Risk assessment modeling

## Contributing

When contributing to this project:
1. Follow consistent coding style and documentation
2. Test new analysis components thoroughly
3. Update documentation for new features
4. Ensure reproducibility of results

## Contact Information

For questions or collaboration opportunities, please refer to the project presentation or contact the development team.

---

*This README provides a comprehensive overview of the wildfire hotspot analysis project. For detailed technical implementation, refer to the individual R scripts and presentation materials.*