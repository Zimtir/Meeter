<script>
  import Box from '../common/Box.svelte'
  import Spinner from 'svelte-spinner'

  import { meets } from '../../tools/store.ts'
</script>

<style>

</style>

<Box>
  {#if $meets.length > 0}
    {#each $meets as meet}
      <h3>{meet.time}</h3>
    {/each}
  {:else}
    <Spinner size="50" speed="750" color="#A82124" thickness="2" gap="40" />
  {/if}
</Box>
