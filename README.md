# Marketing-SalesAnalysis
Linear Regression models to estimate Sales Data using R

Interpreting Simple Regression Model (model1 in code)

Coefficients:
(Intercept)     facebook  
    11.1740       0.2025 
    
The estimated regression line is: Sales=11.174+0.2025*Facebook+e
The intercept(b0) is 11.174 and can be interpreted as the predicted dollar sales value 
for a Facebook advertising budget value of zero. So for a Facebook advertising budget equal 
to zero, we can expect sales of 11.174 *1000 = $11,174.

The regression coefficient(b1) shows that for a Facebook advertising budget equal to 1000 dollars, 
we can expect an increase of 202.5 units (0.2025*1000) in sales 
i.e. Sales = 11.174 + 0.2025*1000 = 56.44 units. This represents a sales of $213,670.


Summary of model1 

Residuals:
Min         1Q      Median       3Q      Max 
-18.8766  -2.5589   0.9248   3.3330   9.8173 

Coefficients:
            Estimate   Std. Error  t value  Pr(>|t|)    
(Intercept) 11.17397    0.67548  16.542   <2e-16 ***
facebook     0.20250    0.02041   9.921   <2e-16 ***

Signif. codes:  0  '***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 5.13 on 198 degrees of freedom
Multiple R-squared:  0.332,	Adjusted R-squared:  0.3287 
F-statistic: 98.42 on 1 and 198 DF,  p-value: < 2.2e-16
