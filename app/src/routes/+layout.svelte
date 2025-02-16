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
  <!-- Basic Metadata -->
  <title>The Bed of Procrustes</title>
  <meta name="description" content="Aphorisms in random order from The Bed of Procrustes, by Nassim Taleb." />
  
  <!-- Open Graph (OG) for social sharing -->
  <meta property="og:title" content="The Bed of Procrustes" />
  <meta property="og:description" content="Aphorisms in random order from The Bed of Procrustes, by Nassim Taleb." />
  <meta property="og:url" content="https://bedofprocrustes.com/" />
  <meta property="og:type" content="website" />
  <meta property="og:image" content="https://bedofprocrustes.com/favicon.webp" />

  <!-- Twitter Card for social previews -->
  <meta name="twitter:card" content="summary_large_image" />
  <meta name="twitter:title" content="The Bed of Procrustes" />
  <meta name="twitter:description" content="Aphorisms in random order from The Bed of Procrustes, by Nassim Taleb." />
  <meta name="twitter:image" content="https://bedofprocrustes.com/favicon.webp" />
  <meta name="twitter:site" content="@your_twitter_handle" />

  <!-- Canonical URL -->
  <link rel="canonical" href="https://bedofprocrustes.com/" />

  <!-- Favicon -->
  <link rel="icon" href="/favicon.webp" type="image/webp" />

  <!-- Structured Data for SEO -->
  <script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "Website",
      "name": "The Bed of Procrustes",
      "url": "https://bedofprocrustes.com/",
      "description": "Aphorisms in random order from The Bed of Procrustes, by Nassim Taleb.",
      "image": "https://bedofprocrustes.com/favicon.webp",
      "author": {
        "@type": "Person",
        "name": "Nassim Nicholas Taleb"
      }
    }
  </script>
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