<script>
  import Nav from './Nav.svelte'
</script>

<header>
  <a href='/' class='header-content'>
    <img src='/favicon.webp' alt='Site Icon' class='site-icon' />
    <div class='title-container'>
      <h1 class='title'>The Bed of Procrustes</h1>
      <h2 class='title-sub'>by Nassim Taleb</h2>
    </div>
  </a>
  <p class='header-description'>Aphorisms in random order, as recommended by the author.</p>
  <Nav />
</header>

<style>

  @media (min-width: 769px) {
    header {
      display: none;
    }
  }

  /* Header */
  header {
    width: 100%;
    border-bottom: 2px solid var(--accent);
    padding-bottom: 0.5rem;
    view-transition-name: header;
  }

  .header-content {
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
    gap: 1rem;
    text-decoration: none;
  }

  .site-icon {
    height: 6rem;
    width: auto;
  }

  .title-container {
    text-align: left;
  }

  .title {
    font-family: var(--font-title);
    font-size: 1.75rem;
    color: var(--accent);
  }

  .title-sub {
    font-family: var(--font-title);
    font-size: 1.25rem;
    color: var(--text);
  }

  .header-description {
    font-family: var(--font-quote);
    font-size: 1rem;
    color: var(--text);
    margin: 1rem 0;
  }
</style>