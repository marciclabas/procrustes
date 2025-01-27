<script lang='ts' module>
  export type Props = {
    quote: string
    loadQuote(): void
  }

</script>

<script lang='ts'>
  const { quote, loadQuote }: Props = $props()
</script>

<div class='content'>
  <div class='quote-box'>
    <p class='quote'>{quote}</p>
  </div>
  <button class='refresh-button' onclick={loadQuote}>
    Random Quote
  </button>
</div>

<style>
  /* Content layout: horizontal on desktop, vertical on mobile */
  .content {
    display: flex;
    align-items: center;
    justify-content: center;
    flex-grow: 1;
    gap: 2rem;
    width: 100%;
    max-width: 900px;
  }

  @media (max-width: 768px) {
    .content {
      display: none;
    }
  }

  .quote-box {
    font-family: var(--font-quote);
    font-size: 2rem;
    max-width: 600px;
    width: 70%;
    line-height: 1.5;
    color: var(--text);
    border-left: 4px solid var(--accent);
    padding: 1rem 2rem;
    text-align: left;
  }

  .refresh-button {
    padding: 0.75rem 1.5rem;
    font-size: 1rem;
    background-color: var(--accent);
    color: var(--primary);
    border: none;
    cursor: pointer;
    transition: background-color 0.3s ease;
    font-family: var(--font-quote);
  }

  .refresh-button:hover {
    background-color: var(--accent-dark);
    color: var(--primary);
  }

</style>
