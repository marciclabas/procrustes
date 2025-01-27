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
</div>

<button class='refresh-button' onclick={loadQuote}>
  Random Quote
</button>

<style>
  /* Center content within remaining space */
  .content {
    display: flex;
    align-items: center;
    justify-content: center; /* Center vertically */
    flex-grow: 1; /* Take remaining space */
    width: 100%;
  }

  .quote-box {
    font-family: var(--font-quote);
    font-size: 2rem;
    width: 100%;
    line-height: 1.5;
    color: var(--text);
    border-left: 4px solid var(--accent);
    padding: 1rem 1.5rem;
    text-align: left;
  }

  /* Fixed button at the bottom */
  .refresh-button {
    position: absolute;
    bottom: 2rem;
    left: 50%;
    transform: translateX(-50%);
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

  @media (min-width: 769px) {
    .content {
      display: none;
    }

    .refresh-button {
      display: none;
    }
  }

</style>
