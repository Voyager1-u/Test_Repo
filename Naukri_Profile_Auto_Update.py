import re
import os
from playwright.sync_api import Page, expect


def test_login_and_edit_Naukri_Profile(page: Page):
    page.goto("https://www.naukri.com/")
    page.locator(".nI-gNb-lg-rg__login").click()
    page.get_by_placeholder("Enter your active Email ID / Username").fill(email= os.getenv("NAUKRI_EMAIL"))
    page.get_by_placeholder("Enter your password").fill(password= os.getenv("NAUKRI_PASSWORD"))
    page.locator("button[type='submit']").click()
    page.get_by_role("link", name="Complete profile").click()
    page.locator(".icon.edit").nth(1).click()
    page.locator("button[type='submit']").nth(1).click()
    page.wait_for_timeout(6000)
    page.close()


