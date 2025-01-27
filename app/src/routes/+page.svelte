<script lang='ts'>
  import Desktop from './Desktop.svelte'
  import Mobile from './Mobile.svelte'

  async function randomQuote() {
    const end = 25
    const index = Math.floor(Math.random() * end)
    return await fetch(`/quotes/${index}.txt`).then(r => r.text())
  }

  let quote = $state('')
  let nextQuote = $state('')

  async function loadQuote() {
    if (!quote)
      quote = await randomQuote()
    else 
      quote = nextQuote
    nextQuote = await randomQuote()
  }

  $effect.root(() => { loadQuote() })

</script>

<Desktop {quote} {loadQuote} />
<Mobile {quote} {loadQuote} />



