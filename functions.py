import re
def is_valid_password(password):
    if len(password) < 6:
        return False
    elif re.search(r"[A-Z]", password):
        return "Atleast 1 uppercace"
    elif re.search(r"[a-z]", password):
        return "Atleast 1 lowercace"
    elif re.search(r"[0-9]", password):
        return "Atleast 1 number"
    elif re.search(r"[@!#$%^&_*)]", password):
        return "Atleast 1 special character"
    else:
        return ""
