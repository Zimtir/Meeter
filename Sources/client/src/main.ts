import App from './App.svelte'

document.querySelectorAll('#client').forEach((element: HTMLElement) => {
  if (!element.hasChildNodes()) {
    new App({
      target: element,
    })
  }
})
