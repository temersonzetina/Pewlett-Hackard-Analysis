# Pewlett-Hackard-Analysis

### Overview
The purpose of this analysis was to provide executives at Pewlett-Hackard (PH) with information about the company's projected retirements over the coming year(s). Key variables involved in the analysis included employee identity indicators (employee ID, age, etc.), work titles, and timeframes for employment. Once equipped with this data, executives will be able to adapt a talent strategy that mitigates the impact of these retirements and creates opportunities for advancement among more junior employees.

In addition to the code provided in SQL, the deliverables included the following set of data files:

- Retirement_titles.csv: A list of all projected retirees (born between 1952 and 1955) and their titles
- Unique_titles.csv: An amended version of the previous list that excludes duplicate entries, which exist for employees who have had multiple roles at PH
- Retiring_titles.csv: A short list featuring the counts of expected retirees by current title

### Results
Below is a set of 4 key findings from the analysis described above.

1. **Prioritizing senior engineers and staff:** A significant number of senior engineers are predicted to retire soon. This presents a serious threat to a company as dependent on its technical workforce as PH. Therefore, the most pressing need in terms of recruitment of new employees may be engineering talent.
2. **Senior staff exodus**: Relatedly, a wave of retirements from senior staff in general (including those with the title of senior staff and senior engineers) will create a large dropoff in institutional knowledge and company-specific expertise across functional areas and departments. This broadens the first point, made above.
3. **Observing potential mentors**: With the help of an Excel pivot table, I was able to discern the two bullet points below. These findings provide some insight into the number of potential mentors. Given the volume of PH's workforce, there seem to be relatively few mentors to go around.

	- There are about 1500 employees eligible to be mentors
	- A majority (about 730) are either senior staff or senior engineers
![mentor pivot](https://github.com/temersonzetina/Pewlett-Hackard-Analysis/blob/main/Data/retiree_count_by_title.png)

4. **Targeting mentors strategically**: In terms of who to target as potential mentors, executive staff may want to consider employee hire date as a variable of interest. This would enable them to focus on staff that have been on board during key moments in the company's history. If executives would prefer for mentored staff to benefit from maximum institutional knowledge, then it would be appropriate to target onboarding date ranges that reach as far back as possible. Conversely, if there are past events or processes that the company would prefer to leave behind, they may target retiring employees whose onboarding date is more recent. *It's important to acknowledge that some of these employees may have been with the company prior, but underwent a title change more recently.*

### Summary
Two essential questions about the direction forward were posed at the beginning of the analysis. Note responses below.

1. **How many roles will need to be filled?**: The "Retiring_titles" data document exhibits a breakdown of retirements by role. The total number of roles to be filled is 90,398 - a large figure, indeed. An additional query completed for retirements by department may also be useful as executives determine their talent strategy moving forward. Note the image of this query below. 

![retirees by dept](https://github.com/temersonzetina/Pewlett-Hackard-Analysis/blob/main/Data/retirees_by_department.png)

2. **Are there enough qualified, retirement-ready employees in the departments to mentor the next gen of PH employees?**: Note the comparison between retiring employees by title and current employees by title below.

![mentor pivot](https://github.com/temersonzetina/Pewlett-Hackard-Analysis/blob/main/Data/retiree_count_by_title.png)
![current employees by title](https://github.com/temersonzetina/Pewlett-Hackard-Analysis/blob/main/Data/current_employees_by_title_FINAL.png)

As you can see, there is a significant disparity between total current employees (most of whom will not be retiring) and eligible mentors. In all likelihood, there will not be enough qualified, retirement-ready employees (especially in the larger departments) to mentor the next generation of employees. Executive staff may want to look into external opportunities (i.e. through externships) as a means for creating the abundance of mentoring relationships that the company may need in the coming years.













