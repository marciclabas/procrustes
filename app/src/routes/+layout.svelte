<script>
  import Footer from './Footer.svelte'
  import Header from './header/Header.svelte'
  import './index.css'
  import { onNavigate } from '$app/navigation'

  onNavigate((navigation) => {
    if (!document.startViewTransition) return;
    
    return new Promise((resolve) => {
      document.startViewTransition(async () => {
        resolve();
        await navigation.complete
      })
    })
  })

  const { children } = $props()
</script>

<!-- <aside class="notice">
  Until approved by the author, only a few quotes are available.
</aside> -->

<div class='container'>
  <Header />
  {@render children()}
</div>
<Footer />

<svelte:head>
  <title>The Bed of Procrustes</title>
  <meta name="description" content="Aphorisms in random order from The Bed of Procrustes, by Nassim Taleb" />
</svelte:head>

<style>
  /* .notice {
    background-color: var(--accent);
    color: var(--primary);
    padding: 1rem;
    text-align: center;
    font-family: var(--font-quote);
    font-size: 1rem;
    position: relative;
    border-bottom: 2px solid var(--primary);
    view-transition-name: notice;
  } */
  
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

  @keyframes fade-in {
    from {
      opacity: 0;
    }
  }

  @keyframes fade-out {
    to {
      opacity: 0;
    }
  }

  @keyframes slide-from-right {
    from {
      transform: translateX(30px);
    }
  }

  @keyframes slide-to-left {
    to {
      transform: translateX(-30px);
    }
  }

  :root::view-transition-old(root) {
    animation:
      90ms cubic-bezier(0.4, 0, 1, 1) both fade-out,
      300ms cubic-bezier(0.4, 0, 0.2, 1) both slide-to-left;
  }

  :root::view-transition-new(root) {
    animation:
      210ms cubic-bezier(0, 0, 0.2, 1) 90ms both fade-in,
      300ms cubic-bezier(0.4, 0, 0.2, 1) both slide-from-right;
  }

</style>