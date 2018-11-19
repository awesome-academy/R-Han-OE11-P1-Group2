module AdminHelper
  def users_by_ages
  column_chart users_by_age, library: {
      title: {text: 'Users by age', x: -20},
      yAxis: {
          crosshair: true,
          title: {
              text: 'Users by age'
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
