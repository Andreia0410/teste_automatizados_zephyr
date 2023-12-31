import pandas as pd


def feature_to_xlsx(feature_file, xlsx_file):
    #feature_file = 'Emissao-SomenteIda-Logado.feature'
    with open(feature_file, 'r') as file:
        lines = file.readlines()

    # Criando um DataFrame para armazenar os cenários
    df = pd.DataFrame(columns=["Cenário", "Passos"])

    scenario = None
    steps = []

    for line in lines:
        line = line.strip()  # Remove espaços em branco
        if line.startswith("Scenario:"):
            # Se houver um cenário anterior, adicione ao DataFrame
            if scenario:
                df = df.append({"Cenário": scenario, "Passos": "\n".join(steps)}, ignore_index=True)
            scenario = line.replace("Scenario:", "").strip()
            steps = []
        elif line.startswith(("Dado", "Quando", "Então", "E", "Mas")):
            steps.append(line)

    # Adiciona o último cenário ao DataFrame
    if scenario:
        df = df.append({"Cenário": scenario, "Passos": "\n".join(steps)}, ignore_index=True)

    # Salva o DataFrame como um arquivo .xlsx
    df.to_excel(xlsx_file, index=False, engine='openpyxl')


file  = feature_to_xlsx('Emissao-SomenteIda-Logado.feature', 'saida.xlsx')
print(file)
