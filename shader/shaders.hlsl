struct PSInput
{
    float4 position : SV_POSITION;
    float4 color : COLOR;
};

PSInput VSMain(float4 position : POSITION, float4 color : COLOR)
{
    PSInput ret;
    ret.position = position;
    ret.color = color;
    return ret;
}

float4 PSMain(PSInput input) : SV_TARGET
{
    return input.color;
}