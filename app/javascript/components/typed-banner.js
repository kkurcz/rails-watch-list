import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Let's watch a movie"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
