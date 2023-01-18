select * from portfolioProject1.dbo.CovidDeath;

select * from portfolioProject1.dbo.Covidvac;

--number of rows into dataset

select count(*) from portfolioProject1..CovidDeath;

select count(*) from portfolioProject1..Covidvac;


--dataset for Afganistan and Algeria location

select * from portfolioProject1..CovidDeath where location in ('Afghanistan' , 'Algeria')

-- population of Afghanistan

select sum(population) as POPULATION from portfolioProject1..CovidDeath where location='Afghanistan'

--Order By Function
select * from portfolioProject1.dbo.CovidDeath order by 3,4;

select * from portfolioProject1.dbo.Covidvac order by 3,4;

-- select data that we are going to be using

Select location, date, total_cases, new_cases,total_deaths,population 
From portfolioProject1.dbo.CovidDeath 
order by 3,4;


--Looking for Toal cases Vs Tootal Deaths
-- show liklihood of dying if you contract covid in your country
Select location, date, total_cases, new_cases,total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
From portfolioProject1.dbo.CovidDeath 
Where location like '%states%'
order by 1,2;

--Look at Total Case vs population
--shows what percentage of population got covid

Select Location, date, Population, total_cases,  (total_cases/population)*100 as DeathPercentage
From portfolioProject1.dbo.CovidDeath 
Where location like '%desh%'
order by 1,2;

--Looking at counties with Highest infection rate compared to population

Select Location, Population, MAX(total_cases) as HighestInfectionCount,  MAX((total_cases/population))*100 as InfectedPopulation
From portfolioProject1.dbo.CovidDeath 
Group by Location, Population
order by InfectedPopulation desc

--Showing countries with highest death count per population

Select Location, MAX(cast(total_deaths as int)) as TOtalDeaths
From portfolioProject1.dbo.CovidDeath 
Where continent is not null
Group by Location, Population
order by TOtalDeaths desc

--Let's Break Things down by location

Select location, MAX(cast(total_deaths as int)) as TOtalDeaths
From portfolioProject1.dbo.CovidDeath 
Where continent is  null
Group by  location
order by TOtalDeaths desc

--Let's Break Things down by continent

Select continent, MAX(cast(total_deaths as int)) as TOtalDeaths
From portfolioProject1.dbo.CovidDeath 
Where continent is  not null
Group by  continent
order by TOtalDeaths desc

--Showing continent with the highest death count per population

Select continent, MAX(cast(total_deaths as int)) as TOtalDeaths
From portfolioProject1.dbo.CovidDeath 
Where continent is  not null
Group by  continent
order by TOtalDeaths desc