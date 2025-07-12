proc print data=sashelp.cars (obs=5);
run;

proc contents data=sashelp.cars;
run;

data work.cars_risk;
    set sashelp.cars;
    ProfitMargin = MSRP - Invoice;
    if ProfitMargin > 5000 or MPG_City < 15 then IsHighRisk = 1;
    else IsHighRisk = 0;
run;

proc freq data=work.cars_risk;
    tables Type*IsHighRisk / nocum nopercent;
run;

proc means data=work.cars_risk mean maxdec=1;
    class Origin;
    var ProfitMargin MPG_City;
run;
