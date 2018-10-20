### chartkick
---

https://chartkick.com/

https://github.com/ankane/chartkick

```js
//= require Chart.bundle
//= require chartkick

//= require chartkick

<%= javascript_include_tag "https://www.gstatic.com/charts/loader.js" %>

//= require highcharts
//= require chartkick


```

```ruby
class ChartController < ApplicationController
  def completed_tasks
    render json: Task.group_by_day(:completed_at).count
  end
end

render json: Task.group(:goal_id).gorup_by_day(:completed_at).count.chart_json

Chartkick.options = {
  height: "400px",
  colors: ["#b00", "#666"]
}
  
Chartkick.options[:html] = '<div id="%{id}" style-"height: %{height};">Loading...</div>'
  
Chartkick.options[:content_for] = :charts_js
  
gem "chartkick"

yarn add chartkick chart.js

import Chartkick from "chartkick";
window.Chartkick = Chartkick;

import Chart from "chart.js';
Chartkick.addAdapter(Chart);

import Highcharts from "highcharts";
Chartkick.addAdapter(Highcharts);

Chartkick.configure({language: "de"});

var chart = Chartkick.charts["chart-js"]

chart.getChartObject()

chart.getElement()
chart.getData()
chart.getOptions()
chart.getAdapter()

chart.updatedData(newData)

chart.updateData(newOptions)
chart.updateData(newData, newOptions)

chart.refresData()
chart.redraw()

Chartkick.eachChart( function(chart){
})


```

```html
<%= line_chart User.group_by_day(:create).count %>
<%= pie_chart Goal.group(:name).count %>
<%= column_chart Task.group_by_hour_of_day(:create-at, format: "%l %P").count %>
<%= bar_chart Shirt.group(:size).sum(:price) %>
<%= area_chart Visit.group_by_minute(:created_at).maximum(:load_time) %>
<%= scatter_chart City.pluck(:size, :population) %>
<%= geo_chart Medal.group(:country).count %>
<%= timeline [
   ["Washington", "1789-04-29", "1797-03-03"],
   ["Adams", "1797-03-03", "1801-03-03"],
   ["Jefferson", "1801-03-03", "1809-03-03"]
 ] %>
  
<%= line_chart @goals.map { |goal|
   {name: goal.name,  data: goal.feats.goup_by_week(:created_at).count}  
 }%>
<%= line_chart completed_tasks_charts_path %>  
  
<%= line_chart data, id: "user-chart", width: "800px", height: "500px" %>
 
<%= line_chart data, min: 1000, max: 5000 %>

<%= line_chart data, colors: ["#b00", "#666"] %>
  
<%= column_chart data, stacked: true %>
  
<%= line_chart data, discrete: true %>
  
<%= line_chart data, label: "Value" %>

<%= line_chart data, xtitle: "Time", ytitle: "Populatoin" %>
  
<%= line_chart data, curve: false %>
  
<%= line_chart data, points: false %>
  
<%= line_chart data, legend: fasle %>
  
<%= line_chart data, legend: "bottom" %>
  
<%= line_chart data, defer: true %>
  
<%= pie_chart data, donut: true %>
  
<%= line_chart data, prefix: "$" %>
  
<%= line_chart data, suffix: "%" %>
  
<%= line_chart data, thousands: "," %>
  
<%= line_chart data, decimal: "," %>
                               
<%= line_chart data, messages: {empty: "No data"} %>
                                                
<%= line_chart data, refresh: 60 %>
                                                
<%= line_chart data, library: {backgroundColor: "#eee"} %>                                                

<%= line_chart data, dataset: {borderWidth: 10} %>  

<%= yeild :chart_js %>
<%= yeild_content :charts_js %>

<%= pie_chart({"Football"} => 10, "Basketball" => 5) %>
<%= pie_chart ["Football", 10], ["Basketball", 5] %>
  
<%= line_chart [
   {name: "Series A", data: series_a},
   {name: "Series B", data: series_b}
 ] %>
  
 <%= line_chart({20.day.ago => 5, "2013-05-07 00:00:00 UTC" => 7}) %>
  
<%= line_chart data, code: true %>
  
<%= line_chart data, download: true %>
  
<%= line_chart data, download: "boom" %>
  
<script src="chartkick.js"></script>
  
<%= line_chart data, adapter: "google" %>
  
```

