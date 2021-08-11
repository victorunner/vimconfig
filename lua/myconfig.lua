require('telescope').setup{
  defaults = {
    prompt_prefix = '$ ',
    i = {
        ['<c-a>'] = function() print('Hello!') end
    }
  }
}
require('telescope').load_extension('fzf')
