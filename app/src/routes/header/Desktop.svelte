<script>
  import Nav from './Nav.svelte'
</script>

<header class='header'>
  <div class='header-content'>
    <a href='/' class='left-section'>
      <img src='/favicon.webp' alt='Site Icon' class='site-icon' />
      <div class='title-container'>
        <h1 class='title'>The Bed of Procrustes, by Nassim Taleb</h1>
        <p class='header-description'>
          Aphorisms in random order, as recommended by the author.
        </p>
      </div>
    </a>
    <Nav />
  </div>
</header>

<style>

  @media (max-width: 768px) {
    header {
      display: none;
    }
  }

  header {
    width: 100%;
    border-bottom: 2px solid var(--accent);
    padding-bottom: 0.5rem;
  }

  .header-content {
    display: flex;
    justify-content: space-between;
    align-items: center;
    max-width: 1200px;
  }

  .left-section {
    display: flex;
    align-items: center;
    gap: 1rem;
    text-decoration: none;
  }

  .site-icon {
    height: 4rem;
    width: auto;
  }

  .title-container {
    text-align: left;
  }

  .title {
    font-family: var(--font-title);
    font-size: 2rem;
    color: var(--accent);
  }

  .header-description {
    font-family: var(--font-quote);
    font-size: 1rem;
    color: var(--text);
    margin-top: 0.3rem;
  }
</style>
