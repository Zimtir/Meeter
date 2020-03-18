<style>
  .box {
    width: 600px;
    height: 150px;
    background-color: #fff;
    border-radius: 4px;
    box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.05);
    display: flex;
    align-items: center;
    justify-content: center;
    flex-wrap: wrap;
    margin: 20px;
    padding: 20px;
    font-weight: 400;
    line-height: 1.75;
  }
</style>

<div class="box">
  <slot />
</div>
