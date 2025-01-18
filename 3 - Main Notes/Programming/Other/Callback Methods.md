- [i] Status: #finished  
- [i] Back links: 
___
# Callback Scenarios

## Event Handling

```ts
    public handleOnClick(event: any)
    {
        console.log(event.type);
    }

    clickButton.addEventListener('click', handleOnClick);
```

Here the `handleOnClick` is used as a [[Delegate|delegate]] and ***called back*** from the click event.
# References