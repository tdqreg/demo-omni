rmdir /s /q weights\icon_detect
rmdir /s /q weights\icon_caption
rmdir /s /q weights\icon_caption_florence

for %%f in (icon_caption icon_detect) do (
    huggingface-cli download microsoft/OmniParser-v2.0 --local-dir weights --repo-type model --include "%%f/*"
)

rename weights\icon_caption icon_caption_florence