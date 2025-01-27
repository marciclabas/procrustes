<script>
    import Footer from './Footer.svelte';
import Header from './header/Header.svelte';
  import './index.css'
  const { children } = $props()
</script>

<div class='container'>
  <Header />
  {@render children()}
</div>
<Footer />

<svelte:head>
  <title>The Bed of Procrustes</title>
</svelte:head>

<style>
  .container {
    min-height: 100vh;
    padding: 2rem;
    max-width: 1280px;
    margin: 0 auto;
    text-align: center;
    color: var(--text);
  }

  @media (min-width: 769px) {
    .container {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: space-between;
    }
  }

</style>