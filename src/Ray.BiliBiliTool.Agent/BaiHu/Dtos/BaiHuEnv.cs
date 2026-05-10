namespace Ray.BiliBiliTool.Agent.BaiHu.Dtos;

public class BaiHuEnv : UpdateBaiHuEnv
{
    public required string id { get; set; }
    public bool enabled { get; set; }
    public bool hidden { get; set; }
    public string? type { get; set; }
    public string? created_at { get; set; }
    public string? updated_at { get; set; }
}
