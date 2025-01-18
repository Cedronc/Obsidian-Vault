- [i] Status: #finished 
- [i] Back links:
___
Middleware is a piece of software that's assembled into the pipeline of other middleware to handle HTTP request.

- It can decide when to pass the HTTP request to the next [[Middleware|middleware]] in the pipeline.
- Can execute code in between the HTPP request being caught and being returned.

![[Pasted image 20240721012023.png|500]]

The order of the app pipeline is defined inside the `program.cs`. Other middleware that are already baked in ASP.NET are for example the Authentication, Authorization, CORS. 



![[Pasted image 20240721125925.png|500]]

# Example
```c#
public class ErrorHandlingMiddleware  
{  
    private readonly RequestDelegate _next;  
  
    public ErrorHandlingMiddleware(RequestDelegate next)  
    {        _next = next;  
    }  
    public async Task Invoke(HttpContext context)  
    {        
        try  
        {  
            await _next(context);  
        }
        catch (Exception ex)  
        {
            var response = new ErrorResponseInfo();  
            response.Message = ex.Message;  
            switch (ex)  
            {                
            case ArgumentNullException:  
                response.StatusCode = 400

                default:  
                    response.StatusCode = 500;  
                    break;  
            }  
            context.Response.StatusCode = response.StatusCode;  
            context.Response.ContentType = "application/json";  
  
            await context.Response.Write(JsonSerializer.Serialize(response));  
        }
    }
}  
  
public class ErrorResponseInfo  
{  
    public string Message { get; set; } = string.Empty;  
    public int StatusCode { get; set; } = -1;  
}
```

In the `program.cs` or `startup.cs` you can use given register method for registering another middleware. This can be any middleware you want. 
```c#
app.UseMiddleware<ErrorHandlingMiddleware>();
```


# References
- [Microsoft](https://learn.microsoft.com/en-us/aspnet/core/fundamentals/middleware/?view=aspnetcore-8.0#create-a-middleware-pipeline-with-webapplication)
- [[Delegate]]