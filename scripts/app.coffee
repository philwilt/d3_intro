d3.selectAll 'p'
  .style 'color', (d,i) -> if i % 2 then 'red' else 'green'
