<script lang="ts" module>
  const range = (end: number) => new Array(end).fill(0).map((_, i) => i)
  function shuffle<T>(xs: T[]) {
    for (let i = xs.length - 1; i >= 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [xs[i], xs[j]] = [xs[j], xs[i]];
    }
  }
  const UNUSED = range(25)
  shuffle(UNUSED)
</script>

<script lang='ts'>
  import Desktop from './Desktop.svelte'
  import Mobile from './Mobile.svelte'


  let unused = $state(UNUSED)
  // $inspect(unused)

  async function randomQuote() {
    if (unused.length === 0)
      unused = UNUSED
    const index = unused.pop()!
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



