module AdminHelper
  def sporters_by_ages
  column_chart sporters_by_age, library: {
      title: {text: 'Sporters by age', x: -20},
      yAxis: {
          crosshair: true,
          title: {
              text: 'Sporters by age'
          }
      },
      xAxis: {
          crosshair: true,
          title: {
              text: 'Age'
          }
      }
  }
  end
end
