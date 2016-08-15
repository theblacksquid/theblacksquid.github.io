

renderMarkdown = (input, target) ->
    markd = marked(input)
    $(target).html markd


Content = (el) ->
    $.get('index.md', (data) ->
        renderMarkdown(data, el)
        console.log('Call Success')
        )

Content('#app')

