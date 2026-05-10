namespace Ray.BiliBiliTool.Agent.BaiHu.Dtos;

public class BaiHuGenericResponse<T>
{
    public int code { get; set; }
    public required T data { get; set; }
    public string? msg { get; set; }
}
