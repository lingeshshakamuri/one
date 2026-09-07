<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · dark edit</title>

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400..700&family=Playfair+Display:ital,wght@0,700;1,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous">

  <style>
    /* ----- reset + dark base ----- */
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body {
      font-family: "Inter", system-ui, -apple-system, sans-serif;
      background: #121212;
      color: #eaeaea;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    a { text-decoration: none; color: inherit; }
    img { max-width: 100%; display: block; }
    button { cursor: pointer; font-family: inherit; border: none; background: none; color: inherit; }
    input { font-family: inherit; }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ----- dark variables ----- */
    :root {
      --bg: #121212;
      --bg-surface: #1e1e1e;
      --bg-card: #252525;
      --bg-elevated: #2a2a2a;
      --primary: #eaeaea;
      --primary-light: #f0f0f0;
      --accent: #d65a4a;          /* warm coral */
      --accent-light: #3a2826;
      --accent-dark: #b5473a;
      --muted: #9e9e9e;
      --muted-light: #6a6a6a;
      --border: #2e2e2e;
      --shadow: 0 4px 20px rgba(0,0,0,0.6);
      --shadow-hover: 0 12px 36px rgba(0,0,0,0.8);
      --transition: 0.2s ease;
      --radius: 20px;
      --radius-sm: 12px;
    }

    .muted { color: var(--muted); }
    .text-center { text-align: center; }
    .sr-only { position: absolute; width: 1px; height: 1px; padding: 0; margin: -1px; overflow: hidden; clip: rect(0,0,0,0); border: 0; }

    /* ----- buttons (dark friendly) ----- */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 0.95rem;
      border: 2px solid transparent;
      transition: var(--transition);
    }
    .btn-primary {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
    }
    .btn-primary:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
      transform: translateY(-2px);
      box-shadow: 0 8px 24px rgba(214, 90, 74, 0.3);
    }
    .btn-secondary {
      background: var(--bg-elevated);
      color: #fff;
      border-color: var(--border);
    }
    .btn-secondary:hover {
      background: #3a3a3a;
      border-color: var(--muted-light);
      transform: translateY(-2px);
    }
    .btn-outline {
      background: transparent;
      color: var(--primary);
      border-color: rgba(255,255,255,0.15);
    }
    .btn-outline:hover {
      background: rgba(255,255,255,0.06);
      border-color: var(--accent);
      transform: translateY(-2px);
    }
    .btn-ghost {
      background: rgba(255,255,255,0.07);
      color: #fff;
      border-color: rgba(255,255,255,0.1);
    }
    .btn-ghost:hover {
      background: rgba(255,255,255,0.15);
      border-color: rgba(255,255,255,0.25);
      transform: translateY(-2px);
    }
    .btn-sm { padding: 8px 18px; font-size: 0.8rem; }

    /* ----- header (dark, glass) ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(18,18,18,0.92);
      backdrop-filter: blur(14px);
      -webkit-backdrop-filter: blur(14px);
      border-bottom: 1px solid rgba(255,255,255,0.04);
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 12px;
      padding: 8px 0;
      min-height: 66px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 8px;
      font-weight: 800;
      font-size: 1.3rem;
      letter-spacing: -0.4px;
      color: var(--primary);
    }
    .brand .accent { color: var(--accent); }
    .brand i { font-size: 1.5rem; color: var(--accent); }

    nav.main-nav ul {
      display: flex;
      gap: 4px;
      list-style: none;
      align-items: center;
    }
    nav.main-nav ul li a {
      display: flex;
      align-items: center;
      gap: 6px;
      padding: 8px 16px;
      border-radius: var(--radius-sm);
      font-weight: 500;
      font-size: 0.9rem;
      color: var(--muted);
      transition: var(--transition);
    }
    nav.main-nav ul li a:hover,
    nav.main-nav ul li a.active {
      background: rgba(255,255,255,0.06);
      color: var(--primary);
    }
    nav.main-nav ul li a i { font-size: 0.9rem; }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 2px;
    }
    .icon-btn {
      width: 42px;
      height: 42px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      font-size: 1.1rem;
      color: var(--muted);
      transition: var(--transition);
      position: relative;
    }
    .icon-btn:hover {
      background: rgba(255,255,255,0.06);
      color: var(--primary);
    }

    .cart-wrap { position: relative; }
    .cart-count {
      position: absolute;
      top: -2px;
      right: -2px;
      background: var(--accent);
      color: #fff;
      font-size: 0.6rem;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid #121212;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: rgba(255,255,255,0.06);
      border-radius: 60px;
      padding: 0 16px 0 18px;
      border: 2px solid transparent;
      transition: var(--transition);
      min-width: 190px;
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      background: rgba(255,255,255,0.08);
      box-shadow: 0 0 0 4px rgba(214, 90, 74, 0.15);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 10px 0;
      font-size: 0.9rem;
      color: var(--primary);
    }
    .search-wrap input::placeholder { color: var(--muted-light); }
    .search-wrap button {
      padding: 8px 0 8px 10px;
      color: var(--muted);
      transition: var(--transition);
      font-size: 0.95rem;
    }
    .search-wrap button:hover { color: var(--accent); }

    .mobile-toggle {
      display: none;
      width: 42px;
      height: 42px;
      border-radius: 50%;
      background: rgba(255,255,255,0.06);
      color: var(--primary);
      font-size: 1.2rem;
    }
    #mobileMenu {
      display: none;
      background: var(--bg-surface);
      border-top: 1px solid rgba(255,255,255,0.04);
      padding: 12px 0 20px;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    #mobileMenu ul li a {
      display: flex;
      align-items: center;
      gap: 12px;
      padding: 12px 16px;
      border-radius: var(--radius-sm);
      font-weight: 500;
      color: var(--primary);
      transition: var(--transition);
    }
    #mobileMenu ul li a:hover { background: rgba(255,255,255,0.06); }
    #mobileMenu ul li a i { width: 22px; color: var(--muted); }

    /* ----- hero (dark, moody) ----- */
    .hero {
      position: relative;
      display: flex;
      align-items: center;
      min-height: 380px;
      padding: 40px 0;
      border-radius: var(--radius);
      overflow: hidden;
      margin: 18px 24px 0;
      background: linear-gradient(145deg, #0d0d0d, #1a1a1a);
    }
    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      opacity: 0.15;
      z-index: 0;
    }
    .hero .container { position: relative; z-index: 1; }
    .hero .badge {
      display: inline-flex;
      align-items: center;
      gap: 6px;
      background: rgba(214, 90, 74, 0.2);
      color: #f3d9d4;
      padding: 4px 16px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 0.8rem;
      letter-spacing: 0.3px;
      margin-bottom: 14px;
    }
    .hero h1 {
      font-family: 'Playfair Display', serif;
      font-weight: 700;
      font-size: 2.8rem;
      color: #fff;
      line-height: 1.15;
      max-width: 580px;
      margin-bottom: 10px;
    }
    .hero p {
      color: rgba(255,255,255,0.7);
      font-size: 1.05rem;
      max-width: 440px;
      margin-bottom: 24px;
      line-height: 1.6;
    }
    .hero .actions { display: flex; gap: 12px; flex-wrap: wrap; }

    /* ----- sections ----- */
    .section { padding: 44px 0; }
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 16px;
      margin-bottom: 28px;
      flex-wrap: wrap;
    }
    .section-header .title-group h2 {
      font-size: 1.7rem;
      font-weight: 700;
      letter-spacing: -0.3px;
      color: var(--primary);
    }
    .section-header .title-group p {
      color: var(--muted);
      margin-top: 4px;
      font-size: 0.95rem;
    }
    .section-header .view-all {
      font-weight: 600;
      color: var(--accent);
      display: flex;
      align-items: center;
      gap: 6px;
      font-size: 0.9rem;
      white-space: nowrap;
      transition: var(--transition);
    }
    .section-header .view-all:hover { gap: 12px; color: var(--accent-dark); }

    /* categories */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 16px;
    }
    .cat-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 22px 12px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: var(--transition);
      cursor: pointer;
      border: 2px solid transparent;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-light);
    }
    .cat-card .icon-wrap {
      width: 52px;
      height: 52px;
      border-radius: 50%;
      background: var(--accent-light);
      display: grid;
      place-items: center;
      margin: 0 auto 10px;
      font-size: 1.4rem;
      color: var(--accent);
      transition: var(--transition);
    }
    .cat-card:hover .icon-wrap { background: var(--accent); color: #fff; }
    .cat-card h4 { font-size: 0.95rem; font-weight: 600; color: var(--primary); }
    .cat-card .count { font-size: 0.8rem; color: var(--muted); margin-top: 2px; }

    /* products */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
    }
    .product-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 2px solid transparent;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-light);
    }
    .product-card .img-wrap {
      position: relative;
      overflow: hidden;
      background: var(--bg-surface);
      aspect-ratio: 1/1;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
    }
    .product-card:hover .img-wrap img { transform: scale(1.04); }
    .product-card .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: var(--accent);
      color: #fff;
      padding: 4px 12px;
      border-radius: 60px;
      font-size: 0.7rem;
      font-weight: 700;
      letter-spacing: 0.3px;
    }
    .product-card .badge.sale { background: #b8860b; color: #fff; }
    .product-card .wish-btn {
      position: absolute;
      top: 12px;
      right: 12px;
      width: 36px;
      height: 36px;
      border-radius: 50%;
      background: rgba(0,0,0,0.6);
      display: grid;
      place-items: center;
      font-size: 0.95rem;
      color: var(--muted);
      transition: var(--transition);
      backdrop-filter: blur(4px);
      border: 1px solid rgba(255,255,255,0.06);
    }
    .product-card .wish-btn:hover { background: rgba(255,255,255,0.12); color: var(--accent); transform: scale(1.08); }
    .product-card .body {
      padding: 14px 16px 10px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    .product-card .body .category-tag {
      font-size: 0.7rem;
      color: var(--muted-light);
      text-transform: uppercase;
      letter-spacing: 0.4px;
      font-weight: 600;
    }
    .product-card .body h5 {
      font-size: 0.95rem;
      font-weight: 600;
      line-height: 1.3;
      color: var(--primary);
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }
    .product-card .body .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      margin-top: 4px;
    }
    .product-card .body .price { font-weight: 700; font-size: 1.1rem; color: #fff; }
    .product-card .body .old-price {
      color: var(--muted-light);
      text-decoration: line-through;
      font-size: 0.85rem;
    }
    .product-card .body .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      font-size: 0.8rem;
      color: #f5a623;
    }
    .product-card .body .rating span { color: var(--muted); font-weight: 400; }
    .product-card .footer {
      padding: 0 16px 16px;
      display: flex;
      gap: 8px;
    }
    .product-card .footer .add-btn {
      flex: 1;
      padding: 10px;
      border-radius: var(--radius-sm);
      background: var(--accent);
      color: #fff;
      font-weight: 600;
      font-size: 0.85rem;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
    }
    .product-card .footer .add-btn:hover { background: var(--accent-dark); transform: scale(1.02); }
    .product-card .footer .add-btn.added { background: #2a9d8f; }

    /* deal */
    .deal-wrap {
      display: flex;
      gap: 0;
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
    }
    .deal-wrap .deal-img {
      flex: 0 0 46%;
      background: var(--bg-surface);
      min-height: 260px;
    }
    .deal-wrap .deal-img img { width: 100%; height: 100%; object-fit: cover; }
    .deal-wrap .deal-content {
      flex: 1;
      padding: 32px 36px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-wrap .deal-content .tag {
      display: inline-flex;
      align-items: center;
      gap: 6px;
      background: #b8860b;
      color: #fff;
      padding: 4px 14px;
      border-radius: 60px;
      font-size: 0.7rem;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.4px;
      align-self: flex-start;
      margin-bottom: 10px;
    }
    .deal-wrap .deal-content h3 { font-size: 1.7rem; font-weight: 700; margin-bottom: 4px; color: #fff; }
    .deal-wrap .deal-content .desc { color: var(--muted); margin-bottom: 12px; }
    .deal-wrap .deal-content .price-big {
      font-size: 1.9rem;
      font-weight: 800;
      color: #fff;
    }
    .deal-wrap .deal-content .price-big .old {
      font-size: 1.1rem;
      font-weight: 400;
      color: var(--muted-light);
      text-decoration: line-through;
      margin-left: 10px;
    }
    .deal-wrap .deal-content .stock {
      font-size: 0.9rem;
      color: var(--muted);
      margin: 4px 0 12px;
    }
    .deal-wrap .deal-content .stock strong { color: var(--accent); }

    .timer-grid {
      display: flex;
      gap: 12px;
      margin: 10px 0 16px;
    }
    .timer-box {
      background: var(--bg-elevated);
      color: #fff;
      padding: 8px 14px;
      border-radius: var(--radius-sm);
      min-width: 60px;
      text-align: center;
      border: 1px solid var(--border);
    }
    .timer-box .num { font-size: 1.6rem; font-weight: 700; line-height: 1.2; }
    .timer-box .label { font-size: 0.6rem; opacity: 0.6; text-transform: uppercase; letter-spacing: 0.4px; }

    /* testimonials */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }
    .testimonials-scroll::-webkit-scrollbar { height: 4px; }
    .testimonials-scroll::-webkit-scrollbar-thumb { background: var(--accent-light); border-radius: 60px; }
    .testimonial-card {
      flex: 0 0 310px;
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 24px;
      box-shadow: var(--shadow);
      scroll-snap-align: start;
      transition: var(--transition);
      border: 1px solid var(--border);
    }
    .testimonial-card:hover { box-shadow: var(--shadow-hover); }
    .testimonial-card .stars { color: #f5a623; font-size: 0.95rem; letter-spacing: 2px; margin-bottom: 8px; }
    .testimonial-card blockquote {
      font-size: 0.95rem;
      line-height: 1.6;
      font-style: italic;
      margin-bottom: 12px;
      color: #d0d0d0;
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .testimonial-card .author .avatar {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      object-fit: cover;
      background: var(--bg-surface);
    }
    .testimonial-card .author .name { font-weight: 600; font-size: 0.9rem; color: #fff; }
    .testimonial-card .author .role { font-size: 0.8rem; color: var(--muted); }

    /* newsletter */
    .newsletter-wrap {
      background: linear-gradient(145deg, #1a1a1a, #0d0d0d);
      border-radius: var(--radius);
      padding: 40px 44px;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 24px;
      flex-wrap: wrap;
      border: 1px solid var(--border);
    }
    .newsletter-wrap .text h3 { font-size: 1.5rem; font-weight: 700; margin-bottom: 2px; }
    .newsletter-wrap .text p { opacity: 0.6; font-size: 0.95rem; }
    .newsletter-wrap form {
      display: flex;
      gap: 10px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 440px;
    }
    .newsletter-wrap form input {
      flex: 1;
      min-width: 170px;
      padding: 14px 20px;
      border-radius: 60px;
      border: 0;
      font-size: 0.95rem;
      background: rgba(255,255,255,0.06);
      color: #fff;
      transition: var(--transition);
      outline: 2px solid transparent;
    }
    .newsletter-wrap form input::placeholder { color: var(--muted-light); }
    .newsletter-wrap form input:focus {
      outline-color: var(--accent);
      background: rgba(255,255,255,0.1);
    }
    .newsletter-wrap form .btn {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
      padding: 14px 32px;
    }
    .newsletter-wrap form .btn:hover { background: var(--accent-dark); border-color: var(--accent-dark); }
    #newsletterMsg { margin-top: 10px; font-size: 0.9rem; opacity: 0.9; width: 100%; }

    /* footer */
    footer {
      margin-top: 16px;
      padding: 40px 0 24px;
      border-top: 1px solid rgba(255,255,255,0.04);
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2.5fr 1fr 1fr 1fr;
      gap: 36px;
      margin-bottom: 28px;
    }
    .footer-grid .brand-col .brand { font-size: 1.2rem; margin-bottom: 6px; }
    .footer-grid .brand-col p { color: var(--muted); font-size: 0.9rem; max-width: 260px; line-height: 1.6; }
    .footer-grid .brand-col .socials {
      display: flex;
      gap: 8px;
      margin-top: 12px;
    }
    .footer-grid .brand-col .socials a {
      width: 38px;
      height: 38px;
      border-radius: 50%;
      background: var(--bg-card);
      display: grid;
      place-items: center;
      color: var(--muted);
      transition: var(--transition);
      font-size: 0.9rem;
      border: 1px solid var(--border);
    }
    .footer-grid .brand-col .socials a:hover { background: var(--accent); color: #fff; border-color: var(--accent); }
    .footer-grid .col h5 { font-weight: 700; font-size: 0.9rem; margin-bottom: 10px; color: #fff; }
    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    .footer-grid .col ul li a {
      color: var(--muted);
      font-size: 0.9rem;
      transition: var(--transition);
    }
    .footer-grid .col ul li a:hover { color: var(--accent); }
    .footer-bottom {
      text-align: center;
      padding-top: 16px;
      border-top: 1px solid rgba(255,255,255,0.04);
      color: var(--muted-light);
      font-size: 0.8rem;
    }

    /* ----- responsive (dark) ----- */
    @media (max-width: 1200px) {
      .products-grid { grid-template-columns: repeat(3, 1fr); }
      .categories-grid { grid-template-columns: repeat(3, 1fr); }
      .footer-grid { grid-template-columns: 1fr 1fr; gap: 28px; }
    }
    @media (max-width: 992px) {
      .hero h1 { font-size: 2.4rem; }
      .hero { min-height: 300px; margin: 16px 16px 0; padding: 28px 0; }
      .deal-wrap { flex-direction: column; }
      .deal-wrap .deal-img { flex: 0 0 190px; }
      .deal-wrap .deal-content { padding: 24px 26px; }
      .newsletter-wrap { padding: 28px 24px; flex-direction: column; text-align: center; }
      .newsletter-wrap form { max-width: 100%; }
      .search-wrap { min-width: 130px; }
    }
    @media (max-width: 768px) {
      nav.main-nav { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .products-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
      .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 12px; }
      .hero h1 { font-size: 1.9rem; }
      .hero p { font-size: 0.95rem; }
      .section-header h2 { font-size: 1.3rem; }
      .deal-wrap .deal-content h3 { font-size: 1.3rem; }
      .deal-wrap .deal-content .price-big { font-size: 1.5rem; }
      .timer-box { min-width: 50px; padding: 6px 10px; }
      .timer-box .num { font-size: 1.2rem; }
      .footer-grid { grid-template-columns: 1fr; gap: 20px; }
      .brand { font-size: 1.1rem; }
      .search-wrap { min-width: 90px; padding: 0 8px 0 12px; }
      .search-wrap input { font-size: 0.8rem; padding: 6px 0; }
      .header-actions .icon-btn { width: 36px; height: 36px; font-size: 0.95rem; }
      .cart-count { width: 18px; height: 18px; font-size: 0.55rem; }
      .testimonial-card { flex: 0 0 250px; }
      .section { padding: 28px 0; }
    }
    @media (max-width: 480px) {
      .products-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
      .categories-grid { grid-template-columns: 1fr 1fr; gap: 8px; }
      .hero { margin: 8px 8px 0; min-height: 200px; padding: 18px 0; border-radius: var(--radius-sm); }
      .hero h1 { font-size: 1.5rem; }
      .container { padding: 0 14px; }
      .deal-wrap .deal-content { padding: 16px; }
      .deal-wrap .deal-img { flex: 0 0 130px; }
      .newsletter-wrap { padding: 18px 14px; }
      .newsletter-wrap .text h3 { font-size: 1.1rem; }
      .product-card .body { padding: 10px 10px 6px; }
      .product-card .body h5 { font-size: 0.8rem; }
      .product-card .body .price { font-size: 0.95rem; }
      .product-card .footer { padding: 0 10px 10px; }
      .product-card .footer .add-btn { font-size: 0.7rem; padding: 6px; }
      .timer-box { min-width: 40px; padding: 4px 6px; }
      .timer-box .num { font-size: 1rem; }
      .timer-box .label { font-size: 0.5rem; }
      .cat-card { padding: 12px 6px; }
      .cat-card .icon-wrap { width: 38px; height: 38px; font-size: 1rem; }
      .cat-card h4 { font-size: 0.75rem; }
    }
  </style>
</head>
<body>

<!-- ===== HEADER ===== -->
<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:10px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
        <i class="fas fa-bars"></i>
      </button>
      <a class="brand" href="#">
        <i class="fas fa-store-alt"></i>
        <span>Nexus<span class="accent">Shop</span></span>
      </a>
    </div>

    <nav class="main-nav" id="mainNav" aria-label="Main navigation">
      <ul>
        <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
    </nav>

    <div style="display:flex;align-items:center;gap:10px;">
      <div class="search-wrap" role="search">
        <input type="search" id="searchInput" placeholder="Search..." aria-label="Search" />
        <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
      </div>

      <div class="header-actions">
        <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        <div class="cart-wrap">
          <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart">
            <i class="fas fa-shopping-bag"></i>
          </button>
          <span class="cart-count" id="cartCount">0</span>
        </div>
      </div>
    </div>
  </div>

  <!-- mobile menu -->
  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        <li><a href="#"><i class="far fa-user"></i> Account</a></li>
        <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
      </ul>
    </div>
  </div>
</header>

<!-- ===== MAIN ===== -->
<main>

  <!-- HERO -->
  <section class="hero" aria-label="Hero banner">
    <div class="container">
      <div class="badge"><i class="fas fa-sparkles"></i> New collection 2026</div>
      <h1>Shop the best<br>of everyday style</h1>
      <p>Curated fashion, tech & accessories — free shipping on your first order.</p>
      <div class="actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
        <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
      </div>
    </div>
  </section>

  <!-- CATEGORIES -->
  <section class="section" id="categories" aria-labelledby="cat-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group">
          <h2 id="cat-title">Browse Categories</h2>
          <p>Find exactly what you need</p>
        </div>
        <a href="#" class="view-all">All Categories <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
    </div>
  </section>

  <!-- PRODUCTS -->
  <section class="section" id="products" aria-labelledby="prod-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group">
          <h2 id="prod-title">Trending Now</h2>
          <p>Popular picks from our community</p>
        </div>
        <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="products-grid" id="productsGrid" aria-live="polite"></div>
    </div>
  </section>

  <!-- DEAL -->
  <section class="section" id="deals" aria-labelledby="deals-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group">
          <h2 id="deals-title">⚡ Flash Deal</h2>
          <p>Hurry — limited stock</p>
        </div>
      </div>
      <div class="deal-wrap">
        <div class="deal-img">
          <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
        </div>
        <div class="deal-content">
          <span class="tag"><i class="fas fa-bolt"></i> Limited Offer</span>
          <h3>MacBook Air M2</h3>
          <p class="desc">Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>
          <div>
            <span class="price-big">$999 <span class="old">$1,199</span></span>
          </div>
          <p class="stock">Only <strong>12</strong> items left — hurry!</p>
          <div class="timer-grid" id="dealTimer">
            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
            <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hours</div></div>
            <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Mins</div></div>
            <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Secs</div></div>
          </div>
          <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to Cart</button>
        </div>
      </div>
    </div>
  </section>

  <!-- TESTIMONIALS -->
  <section class="section" id="testimonials" aria-labelledby="test-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group">
          <h2 id="test-title">What Our Customers Say</h2>
          <p>Real reviews from real people</p>
        </div>
      </div>
      <div class="testimonials-scroll" id="testimonialsList"></div>
    </div>
  </section>

  <!-- NEWSLETTER -->
  <section class="section" aria-labelledby="news-title">
    <div class="container">
      <div class="newsletter-wrap">
        <div class="text">
          <h3 id="news-title">Stay in the Loop</h3>
          <p>Exclusive offers, early access & new arrivals</p>
        </div>
        <form id="newsletterForm" onsubmit="return false;">
          <input type="email" id="newsletterEmail" placeholder="Enter your email" aria-label="Email" required />
          <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
          <div id="newsletterMsg"></div>
        </form>
      </div>
    </div>
  </section>

</main>

<!-- ===== FOOTER ===== -->
<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="brand-col">
        <div class="brand"><i class="fas fa-store-alt"></i> <span>Nexus<span class="accent">Shop</span></span></div>
        <p>Modern e‑commerce demo — quality products, seamless experience.</p>
        <div class="socials">
          <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
          <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
          <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
          <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
        </div>
      </div>
      <div class="col"><h5>Company</h5><ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Press</a></li><li><a href="#">Blog</a></li></ul></div>
      <div class="col"><h5>Support</h5><ul><li><a href="#">Help Center</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li><li><a href="#">Contact</a></li></ul></div>
      <div class="col"><h5>Legal</h5><ul><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li><li><a href="#">Cookies</a></li></ul></div>
    </div>
    <div class="footer-bottom">&copy; <span id="year"></span> NexusShop. All rights reserved.</div>
  </div>
</footer>

<!-- ===== SCRIPT ===== -->
<script>
  (function() {
    // ----- data -----
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
    ];

    const PRODUCTS = [
      { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'Smartphones' },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '', img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'Laptops' },
      { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
      { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '', img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'Footwear' },
      { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New', img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'Gadgets' },
      { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '', img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
      { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale', img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
      { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '', img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'Gadgets' }
    ];

    const TESTIMONIALS = [
      { name: 'Ava Martin', role: 'Verified Buyer', avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80', text: 'Fast shipping and excellent support. The product exceeded my expectations!', stars: 5 },
      { name: 'Michael Lee', role: 'Frequent Shopper', avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80', text: 'Great selection and smooth checkout. Will definitely shop again.', stars: 4 },
      { name: 'Sophia Chen', role: 'Designer', avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80', text: 'Love the quality and the packaging. Everything arrived in perfect condition.', stars: 5 },
      { name: 'James Wilson', role: 'Tech Enthusiast', avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80', text: 'Amazing prices on electronics. The M2 MacBook deal was unbeatable.', stars: 5 }
    ];

    // ----- state -----
    let cartCount = 0;

    // ----- DOM refs -----
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    const searchBtn = document.getElementById('searchBtn');
    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenu = document.getElementById('mobileMenu');
    const newsletterForm = document.getElementById('newsletterForm');
    const newsletterEmail = document.getElementById('newsletterEmail');
    const newsletterMsg = document.getElementById('newsletterMsg');
    const testimonialsList = document.getElementById('testimonialsList');

    // ----- helpers -----
    function escapeHtml(text) {
      return String(text).replace(/[&<>"']/g, s => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[s] || s));
    }

    function updateCartCount() {
      cartCountEl.textContent = cartCount;
      cartCountEl.style.transform = 'scale(1.25)';
      setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);
    }

    function addToCart(productId, btnEl) {
      const p = PRODUCTS.find(x => x.id === productId);
      if (!p) return;
      cartCount++;
      updateCartCount();
      if (btnEl) {
        const orig = btnEl.innerHTML;
        btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
        btnEl.classList.add('added');
        setTimeout(() => { btnEl.innerHTML = orig; btnEl.classList.remove('added'); }, 1500);
      }
      document.getElementById('cartBtn').style.color = 'var(--accent)';
      setTimeout(() => document.getElementById('cartBtn').style.color = '', 400);
    }

    function filterProducts(query) {
      const q = String(query || '').trim().toLowerCase();
      if (!q) { renderProducts(PRODUCTS); return; }
      const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
      renderProducts(filtered);
    }

    // ----- renderers -----
    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(cat => {
        const el = document.createElement('div');
        el.className = 'cat-card';
        el.innerHTML = `<div class="icon-wrap"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4><div class="count">${cat.count} items</div>`;
        el.addEventListener('click', () => {
          searchInput.value = cat.name;
          filterProducts(cat.name);
          document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        categoriesGrid.appendChild(el);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      if (!list.length) {
        productsGrid.innerHTML = `<p style="grid-column:1/-1;text-align:center;padding:32px;color:var(--muted);">No products found.</p>`;
        return;
      }
      list.forEach(p => {
        const el = document.createElement('article');
        el.className = 'product-card';
        const badgeClass = p.badge === 'Sale' ? 'sale' : '';
        const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
        const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : '';
        const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
        el.innerHTML = `
          <div class="img-wrap">
            <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
            ${badgeHtml}
            <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
          </div>
          <div class="body">
            <div class="category-tag">${p.category}</div>
            <h5>${escapeHtml(p.title)}</h5>
            <div class="price-row"><span class="price">$${p.price.toLocaleString()}</span>${oldPriceHtml}</div>
            <div class="rating">${stars} <span>(${p.reviews})</span></div>
          </div>
          <div class="footer"><button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button></div>
        `;
        productsGrid.appendChild(el);
      });
      productsGrid.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', function(e) {
          e.stopPropagation();
          addToCart(Number(this.dataset.id), this);
        });
      });
    }

    function renderTestimonials() {
      testimonialsList.innerHTML = '';
      TESTIMONIALS.forEach(t => {
        const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
        const el = document.createElement('div');
        el.className = 'testimonial-card';
        el.innerHTML = `
          <div class="stars">${stars}</div>
          <blockquote>“${escapeHtml(t.text)}”</blockquote>
          <div class="author">
            <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
            <div><div class="name">${escapeHtml(t.name)}</div><div class="role">${escapeHtml(t.role)}</div></div>
          </div>
        `;
        testimonialsList.appendChild(el);
      });
    }

    // ----- deal timer -----
    (function setupDealTimer() {
      const now = new Date();
      const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);
      function tick() {
        const diff = target - new Date();
        if (diff <= 0) {
          document.getElementById('dealDays').textContent = '0';
          document.getElementById('dealHours').textContent = '00';
          document.getElementById('dealMinutes').textContent = '00';
          document.getElementById('dealSeconds').textContent = '00';
          return;
        }
        const days = Math.floor(diff / (24 * 3600 * 1000));
        const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
        const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
        const secs = Math.floor((diff % (60 * 1000)) / 1000);
        document.getElementById('dealDays').textContent = days;
        document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
        document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
        document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
      }
      tick();
      setInterval(tick, 1000);
    })();

    // ----- event bindings -----
    searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', (e) => { if (e.key === 'Enter') filterProducts(e.target.value); });

    mobileToggle.addEventListener('click', () => {
      const isOpen = mobileMenu.style.display === 'block';
      mobileMenu.style.display = isOpen ? 'none' : 'block';
      mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
    });
    mobileMenu.querySelectorAll('a').forEach(link => {
      link.addEventListener('click', () => {
        mobileMenu.style.display = 'none';
        mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
      });
    });

    document.getElementById('shopNow').addEventListener('click', () => {
      document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
    });
    document.getElementById('exploreDeals').addEventListener('click', () => {
      document.getElementById('deals').scrollIntoView({ behavior: 'smooth', block: 'start' });
    });

    document.getElementById('buyDeal').addEventListener('click', function() {
      cartCount++;
      updateCartCount();
      const orig = this.innerHTML;
      this.innerHTML = '<i class="fas fa-check"></i> Added!';
      this.style.background = '#2a9d8f';
      setTimeout(() => { this.innerHTML = orig; this.style.background = ''; }, 1600);
    });

    newsletterForm.addEventListener('submit', (e) => {
      e.preventDefault();
      const email = newsletterEmail.value.trim();
      if (!email || !email.includes('@')) {
        newsletterMsg.textContent = 'Please enter a valid email.';
        newsletterMsg.style.color = '#ffb3b3';
        newsletterMsg.style.display = 'block';
        return;
      }
      newsletterMsg.textContent = '🎉 Thanks for subscribing!';
      newsletterMsg.style.color = '#a8e6cf';
      newsletterMsg.style.display = 'block';
      newsletterEmail.value = '';
      setTimeout(() => { newsletterMsg.style.display = 'none'; }, 3500);
    });

    document.getElementById('cartBtn').addEventListener('click', () => {
      alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
    });

    document.getElementById('year').textContent = new Date().getFullYear();

    // ----- init -----
    renderCategories();
    renderProducts(PRODUCTS);
    renderTestimonials();
    updateCartCount();

    window.addEventListener('resize', () => {
      if (window.innerWidth > 768) {
        mobileMenu.style.display = 'none';
        mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
      }
    });

    console.log('🚀 NexusShop — dark edition loaded.');
  })();
</script>
</body>
</html>
