export interface INavItem {
    id: string,
    label: string,
    link?: string | null;
    action?: (() => void) | null,
}