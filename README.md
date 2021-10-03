# Pewlett-Hackard-Analysis

### Overview
The purpose of this analysis was to provide executives at Pewlett-Hackard (PH) with information about the company's projected retirements over the coming year(s). Key variables involved in the analysis included employee identity indicators (employee ID, age, etc.), work titles, and timeframes for employment. Once equipped with this data, executives will be able to adapt a talent strategy that mitigates the impact of these retirements and creates opportunities for advancement among more junior employees.

In addition to the code provided in SQL, the deliverables included the following set of data files:

- Retirement_titles.csv: A list of all projected retirees (born between 1952 and 1955) and their titles
- Unique_titles.csv: An amended version of the previous list that excludes duplicate entries, which exist for employees who have had multiple roles at PH
- Retiring_titles.csv: A short list featuring the counts of expected retirees by current title

### Results
Below is a set of 4 key findings from the analysis described above.

1. Prioritizing senior engineers and staff: A significant number of senior engineers are predicted to retire soon. This presents a serious threat to a company as dependent on its engineering workforce as PH. Therefore, the most pressing need in terms of recruitment of new employees may be engineering talent.
2. Senior staff exodus: Relatedly, a wave of retirements from senior staff in general (including those with the title of senior staff and senior engineers) will create a large dropoff in institutional knowledge and company-specific expertise across functional areas and departments. This broadens the first point, made above.
3. Observing potential mentors: There are about 1500 employees eligible to be mentors.
With the help of an Excel pivot table, I was able to discern the two bullet points below. These findings mean that there may be ample employees to select from in identifying mentors for priority positions.

	- There are about 1500 employees eligible to be mentors
	- A majority (about 730) are either senior staff or senior engineers
	- IMAGE OF PIVOT OUTPUT - retiree_count_by_title

4. Targeting mentors strategically: In terms of who to target as potential mentors, executive staff may want to consider employee hire date as a variable of interest. This would enable them to focus on staff that have been on board during key moments in the company's history. If executives would prefer for mentored staff to benefit from certain institutional knowledge, then it would be appropriate to target onboarding date ranges that reach as far back as possible. Conversely, if there are past events or processes that the company would prefer to leave behind, they may target retiring employees whose onboarding date is more recent. *It's important to acknowledge that some of these employees may have been with the company prior, but underwent a title change more recently.*

### Summary
Two essential questions about the direction forward were posed at the beginning of the analysis. Note responses below.

1. How many roles will need to be filled?
-The total number of roles is 90,398
-Create table that shows by dept_name as opposed to simply title

Are there enough qualified, retirement-ready employees in the depts to mentor the next gen of PH employees?
-Depends on mentorship load; For more intensive roles, a lower mentor/mentee ratio would be best
-Currently, the comparison of retiring versus sustaining employees by role is:
--> Create table that shows ALL current employees by title (and dept if preferred) compared with anticipated retirements













