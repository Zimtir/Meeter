<script>
  import Box from '../common/Box.svelte'
  import Button from '../common/Button.svelte'
  import Spinner from 'svelte-spinner'

  import { meets } from '../../tools/store.ts'
</script>

<style>

</style>

<Box>
  {#if $meets.length > 0}
    {#each $meets as meet}
      <Button>
        <h3>{meet.time}</h3>
      </Button>
    {/each}
  {:else}
    <Spinner size="50" speed="750" color="#A82124" thickness="2" gap="40" />
  {/if}
</Box>
