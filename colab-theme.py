from IPython.display import HTML, display, clear_output
def set_css():
  display(HTML('''
  <style>
    @import url('https://wmeluna.github.io/colab.css');
  </style>
  '''))
get_ipython().events.register('pre_run_cell', set_css)
clear_output()
