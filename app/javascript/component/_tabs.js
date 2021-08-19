const tabsActive = () => {
  //TODO only on dashboard
  const tabs = document.querySelectorAll(".tab-link")
  const tabPanes = document.querySelectorAll(".tab-pane")
  console.log(tabPanes)

  tabs.forEach((navLink) => {
    navLink.addEventListener("click", (event) => {
      tabs.forEach((link) => {
        link.classList.toggle("active", link === event.target);
        if (link === event.target) {
          link.setAttribute("aria-selected", "true")
        } else {
          link.setAttribute("aria-selected", "false")
        };
       })

      tabPanes.forEach((pane) => {
        pane.classList.toggle("show", pane.id === event.target.dataset.function)
        pane.classList.toggle("active", pane.id === event.target.dataset.function)
      })
    });
  });
};

export {tabsActive};
